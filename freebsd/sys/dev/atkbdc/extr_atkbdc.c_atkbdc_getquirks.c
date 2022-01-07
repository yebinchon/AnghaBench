
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ quirk; int product; int maker; int bios_vendor; } ;


 scalar_t__ QUIRK_STR_MATCH (int ,char*) ;
 char* kern_getenv (char*) ;
 TYPE_1__* quirks ;

__attribute__((used)) static int
atkbdc_getquirks(void)
{
    int i;
    char* bios_vendor = kern_getenv("smbios.bios.vendor");
    char* maker = kern_getenv("smbios.system.maker");
    char* product = kern_getenv("smbios.system.product");

    for (i=0; quirks[i].quirk != 0; ++i)
 if (QUIRK_STR_MATCH(quirks[i].bios_vendor, bios_vendor) &&
     QUIRK_STR_MATCH(quirks[i].maker, maker) &&
     QUIRK_STR_MATCH(quirks[i].product, product))
  return (quirks[i].quirk);

    return (0);
}
