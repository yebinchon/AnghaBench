
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_feature_value (char const*,char const*,int *) ;

int parse_feature_request(const char *feature_list, const char *feature)
{
 return !!parse_feature_value(feature_list, feature, ((void*)0));
}
