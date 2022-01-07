
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* parse_feature_value (int ,char const*,int*) ;
 int server_capabilities_v1 ;

const char *server_feature_value(const char *feature, int *len)
{
 return parse_feature_value(server_capabilities_v1, feature, len);
}
