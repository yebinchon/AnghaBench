
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int ng_ID_t ;


 scalar_t__ ULONG_MAX ;
 int isxdigit (char const) ;
 int strlen (char const*) ;
 scalar_t__ strtoul (char const*,char**,int) ;

__attribute__((used)) static ng_ID_t
ng_decodeidname(const char *name)
{
 const int len = strlen(name);
 char *eptr;
 u_long val;


 if ((len < 3) || (name[0] != '[') || (name[len - 1] != ']') ||
     (!isxdigit(name[1])))
  return ((ng_ID_t)0);


 val = strtoul(name + 1, &eptr, 16);
 if ((eptr - name != len - 1) || (val == ULONG_MAX) || (val == 0))
  return ((ng_ID_t)0);

 return ((ng_ID_t)val);
}
