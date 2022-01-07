
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char const) ;

__attribute__((used)) static int str_isspace(const char *str)
{
 for (; *str; str++)
  if (!isspace(*str))
   return 0;

 return 1;
}
