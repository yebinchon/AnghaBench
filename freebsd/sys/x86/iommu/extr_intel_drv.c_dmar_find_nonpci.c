
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ u_int ;
struct dmar_unit {int dummy; } ;
typedef int * device_t ;
struct TYPE_9__ {int Length; scalar_t__ EntryType; scalar_t__ EnumerationId; int Bus; } ;
struct TYPE_6__ {int Length; } ;
struct TYPE_8__ {TYPE_1__ Header; } ;
struct TYPE_7__ {int Function; int Device; } ;
typedef TYPE_2__ ACPI_DMAR_PCI_PATH ;
typedef TYPE_3__ ACPI_DMAR_HARDWARE_UNIT ;
typedef TYPE_4__ ACPI_DMAR_DEVICE_SCOPE ;


 scalar_t__ ACPI_DMAR_SCOPE_TYPE_IOAPIC ;
 int PCI_RID (int ,int ,int ) ;
 scalar_t__ device_get_softc (int *) ;
 int dmar_devcnt ;
 int ** dmar_devs ;
 TYPE_3__* dmar_find_by_index (int) ;
 int ioapic_get_rid (scalar_t__,int *) ;
 int printf (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static struct dmar_unit *
dmar_find_nonpci(u_int id, u_int entry_type, uint16_t *rid)
{
 device_t dmar_dev;
 struct dmar_unit *unit;
 ACPI_DMAR_HARDWARE_UNIT *dmarh;
 ACPI_DMAR_DEVICE_SCOPE *devscope;
 ACPI_DMAR_PCI_PATH *path;
 char *ptr, *ptrend;



 int i;

 for (i = 0; i < dmar_devcnt; i++) {
  dmar_dev = dmar_devs[i];
  if (dmar_dev == ((void*)0))
   continue;
  unit = (struct dmar_unit *)device_get_softc(dmar_dev);
  dmarh = dmar_find_by_index(i);
  if (dmarh == ((void*)0))
   continue;
  ptr = (char *)dmarh + sizeof(*dmarh);
  ptrend = (char *)dmarh + dmarh->Header.Length;
  for (;;) {
   if (ptr >= ptrend)
    break;
   devscope = (ACPI_DMAR_DEVICE_SCOPE *)ptr;
   ptr += devscope->Length;
   if (devscope->EntryType != entry_type)
    continue;
   if (devscope->EnumerationId != id)
    continue;
   if (devscope->Length - sizeof(ACPI_DMAR_DEVICE_SCOPE)
       == 2) {
    if (rid != ((void*)0)) {
     path = (ACPI_DMAR_PCI_PATH *)
         (devscope + 1);
     *rid = PCI_RID(devscope->Bus,
         path->Device, path->Function);
    }
    return (unit);
   }
   printf(
             "dmar_find_nonpci: id %d type %d path length != 2\n",
       id, entry_type);
   break;
  }
 }
 return (((void*)0));
}
