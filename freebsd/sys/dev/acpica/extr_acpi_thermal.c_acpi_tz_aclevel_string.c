
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TZ_NUMLEVELS ;
 char const** aclevel_string ;

__attribute__((used)) static __inline const char *
acpi_tz_aclevel_string(int active)
{
    if (active < -1 || active >= TZ_NUMLEVELS)
 return (aclevel_string[0]);

    return (aclevel_string[active + 1]);
}
