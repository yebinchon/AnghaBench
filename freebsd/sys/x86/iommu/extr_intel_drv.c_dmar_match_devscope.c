
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Length; int EntryType; int Bus; } ;
typedef int ACPI_DMAR_PCI_PATH ;
typedef TYPE_1__ ACPI_DMAR_DEVICE_SCOPE ;


 int ACPI_DMAR_SCOPE_TYPE_BRIDGE ;
 int ACPI_DMAR_SCOPE_TYPE_ENDPOINT ;
 int dmar_match_pathes (int ,int *,int,int,int const*,int,int ) ;
 int printf (char*,int) ;

__attribute__((used)) static int
dmar_match_devscope(ACPI_DMAR_DEVICE_SCOPE *devscope, int dev_busno,
    const ACPI_DMAR_PCI_PATH *dev_path, int dev_path_len)
{
 ACPI_DMAR_PCI_PATH *path;
 int path_len;

 if (devscope->Length < sizeof(*devscope)) {
  printf("dmar_match_devscope: corrupted DMAR table, dl %d\n",
      devscope->Length);
  return (-1);
 }
 if (devscope->EntryType != ACPI_DMAR_SCOPE_TYPE_ENDPOINT &&
     devscope->EntryType != ACPI_DMAR_SCOPE_TYPE_BRIDGE)
  return (0);
 path_len = devscope->Length - sizeof(*devscope);
 if (path_len % 2 != 0) {
  printf("dmar_match_devscope: corrupted DMAR table, dl %d\n",
      devscope->Length);
  return (-1);
 }
 path_len /= 2;
 path = (ACPI_DMAR_PCI_PATH *)(devscope + 1);
 if (path_len == 0) {
  printf("dmar_match_devscope: corrupted DMAR table, dl %d\n",
      devscope->Length);
  return (-1);
 }

 return (dmar_match_pathes(devscope->Bus, path, path_len, dev_busno,
     dev_path, dev_path_len, devscope->EntryType));
}
