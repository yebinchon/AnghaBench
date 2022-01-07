
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int server_feature_value (char const*,int *) ;

int server_supports(const char *feature)
{
 return !!server_feature_value(feature, ((void*)0));
}
