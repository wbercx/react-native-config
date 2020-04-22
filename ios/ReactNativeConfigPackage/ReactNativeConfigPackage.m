#import "ReactNativeConfigPackage.h"
#import "GeneratedDotEnv.m" // written during build by BuildDotenvConfig.ruby

@implementation ReactNativeConfigPackage

RCT_EXPORT_MODULE(ReactNativeConfigPackage)

+ (BOOL)requiresMainQueueSetup
{
    return YES;
}

+ (NSDictionary *)env {
    return (NSDictionary *)DOT_ENV;
}

+ (NSString *)envFor: (NSString *)key {
    NSString *value = (NSString *)[self.env objectForKey:key];
    return value;
}

- (NSDictionary *)constantsToExport {
    return DOT_ENV
}

@end
