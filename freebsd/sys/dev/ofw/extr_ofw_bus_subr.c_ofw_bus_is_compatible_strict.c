
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 char* ofw_bus_get_compat (int ) ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,size_t) ;

int
ofw_bus_is_compatible_strict(device_t dev, const char *compatible)
{
 const char *compat;
 size_t len;

 if ((compat = ofw_bus_get_compat(dev)) == ((void*)0))
  return (0);

 len = strlen(compatible);
 if (strlen(compat) == len &&
     strncasecmp(compat, compatible, len) == 0)
  return (1);

 return (0);
}
