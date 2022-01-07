
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int color_parse_mem (char const*,int ,char*) ;
 int strlen (char const*) ;

int color_parse(const char *value, char *dst)
{
 return color_parse_mem(value, strlen(value), dst);
}
