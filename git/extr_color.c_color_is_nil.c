
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;

int color_is_nil(const char *c)
{
 return !strcmp(c, "NIL");
}
