
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int FDT_COMPAT_LEN ;
 scalar_t__ OF_getprop (int ,char*,char*,int) ;
 scalar_t__ OF_getproplen (int ,char*) ;
 scalar_t__ strncasecmp (char*,char const*,int) ;

int
fdt_is_compatible_strict(phandle_t node, const char *compatible)
{
 char compat[FDT_COMPAT_LEN];

 if (OF_getproplen(node, "compatible") <= 0)
  return (0);

 if (OF_getprop(node, "compatible", compat, FDT_COMPAT_LEN) < 0)
  return (0);

 if (strncasecmp(compat, compatible, FDT_COMPAT_LEN) == 0)

  return (1);

 return (0);
}
