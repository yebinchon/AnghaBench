
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dmar_unit {int unit; } ;
struct TYPE_8__ {int Length; } ;
struct TYPE_6__ {int Length; } ;
struct TYPE_7__ {int Segment; int Flags; TYPE_1__ Header; } ;
typedef int ACPI_DMAR_PCI_PATH ;
typedef TYPE_2__ ACPI_DMAR_HARDWARE_UNIT ;
typedef TYPE_3__ ACPI_DMAR_DEVICE_SCOPE ;


 int ACPI_DMAR_INCLUDE_ALL ;
 TYPE_2__* dmar_find_by_index (int ) ;
 int dmar_match_devscope (TYPE_3__*,int,int const*,int) ;

__attribute__((used)) static bool
dmar_match_by_path(struct dmar_unit *unit, int dev_domain, int dev_busno,
    const ACPI_DMAR_PCI_PATH *dev_path, int dev_path_len, const char **banner)
{
 ACPI_DMAR_HARDWARE_UNIT *dmarh;
 ACPI_DMAR_DEVICE_SCOPE *devscope;
 char *ptr, *ptrend;
 int match;

 dmarh = dmar_find_by_index(unit->unit);
 if (dmarh == ((void*)0))
  return (0);
 if (dmarh->Segment != dev_domain)
  return (0);
 if ((dmarh->Flags & ACPI_DMAR_INCLUDE_ALL) != 0) {
  if (banner != ((void*)0))
   *banner = "INCLUDE_ALL";
  return (1);
 }
 ptr = (char *)dmarh + sizeof(*dmarh);
 ptrend = (char *)dmarh + dmarh->Header.Length;
 while (ptr < ptrend) {
  devscope = (ACPI_DMAR_DEVICE_SCOPE *)ptr;
  ptr += devscope->Length;
  match = dmar_match_devscope(devscope, dev_busno, dev_path,
      dev_path_len);
  if (match == -1)
   return (0);
  if (match == 1) {
   if (banner != ((void*)0))
    *banner = "specific match";
   return (1);
  }
 }
 return (0);
}
