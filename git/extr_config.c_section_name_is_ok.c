
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (char const) ;

__attribute__((used)) static int section_name_is_ok(const char *name)
{

 if (!*name)
  return 0;





 for (; *name && *name != '.'; name++)
  if (*name != '-' && !isalnum(*name))
   return 0;
 return 1;
}
