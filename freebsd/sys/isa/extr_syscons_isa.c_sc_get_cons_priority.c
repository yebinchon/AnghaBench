
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CN_INTERNAL ;
 int CN_NORMAL ;
 int SC_DRIVER_NAME ;
 int SC_KERNEL_CONSOLE ;
 scalar_t__ resource_disabled (int ,int) ;
 scalar_t__ resource_int_value (int ,int,char*,int*) ;
 scalar_t__ resource_string_value (int ,int,char*,char const**) ;

int
sc_get_cons_priority(int *unit, int *flags)
{
 const char *at;
 int f, u;

 *unit = -1;
 for (u = 0; u < 16; u++) {
  if (resource_disabled(SC_DRIVER_NAME, u))
   continue;
  if (resource_string_value(SC_DRIVER_NAME, u, "at", &at) != 0)
   continue;
  if (resource_int_value(SC_DRIVER_NAME, u, "flags", &f) != 0)
   f = 0;
  if (f & SC_KERNEL_CONSOLE) {

   *unit = u;
   *flags = f;
   break;
  }
  if (*unit < 0) {

   *unit = u;
   *flags = f;
  }
 }
 if (*unit < 0) {
  *unit = 0;
  *flags = 0;
 }



 return (CN_INTERNAL);
}
