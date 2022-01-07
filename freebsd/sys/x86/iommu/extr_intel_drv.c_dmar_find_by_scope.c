
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int dummy; } ;
typedef int ACPI_DMAR_PCI_PATH ;


 struct dmar_unit* device_get_softc (int *) ;
 int dmar_devcnt ;
 int ** dmar_devs ;
 scalar_t__ dmar_match_by_path (struct dmar_unit*,int,int,int const*,int,int *) ;

__attribute__((used)) static struct dmar_unit *
dmar_find_by_scope(int dev_domain, int dev_busno,
    const ACPI_DMAR_PCI_PATH *dev_path, int dev_path_len)
{
 struct dmar_unit *unit;
 int i;

 for (i = 0; i < dmar_devcnt; i++) {
  if (dmar_devs[i] == ((void*)0))
   continue;
  unit = device_get_softc(dmar_devs[i]);
  if (dmar_match_by_path(unit, dev_domain, dev_busno, dev_path,
      dev_path_len, ((void*)0)))
   return (unit);
 }
 return (((void*)0));
}
