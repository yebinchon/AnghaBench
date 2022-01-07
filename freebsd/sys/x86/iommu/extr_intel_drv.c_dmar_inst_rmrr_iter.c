
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uintmax_t ;
typedef scalar_t__ uint16_t ;
struct inst_rmrr_iter_args {struct dmar_unit* dmar; } ;
struct dmar_unit {scalar_t__ segment; int unit; } ;
typedef int * device_t ;
struct TYPE_9__ {int Length; scalar_t__ EntryType; int Bus; } ;
struct TYPE_8__ {scalar_t__ Type; } ;
struct TYPE_6__ {int Length; } ;
struct TYPE_7__ {scalar_t__ Segment; scalar_t__ EndAddress; scalar_t__ BaseAddress; TYPE_1__ Header; } ;
typedef TYPE_2__ ACPI_DMAR_RESERVED_MEMORY ;
typedef int ACPI_DMAR_PCI_PATH ;
typedef TYPE_3__ ACPI_DMAR_HEADER ;
typedef TYPE_4__ ACPI_DMAR_DEVICE_SCOPE ;


 scalar_t__ ACPI_DMAR_SCOPE_TYPE_ENDPOINT ;
 scalar_t__ ACPI_DMAR_TYPE_RESERVED_MEMORY ;
 scalar_t__ bootverbose ;
 struct dmar_unit* dmar_find (int *,int) ;
 struct dmar_unit* dmar_find_by_scope (scalar_t__,int ,int const*,int) ;
 int dmar_get_ctx_for_devpath (struct dmar_unit*,scalar_t__,scalar_t__,int ,int const*,int,int,int) ;
 int dmar_instantiate_ctx (struct dmar_unit*,int *,int) ;
 int * dmar_path_dev (scalar_t__,int,int ,int const*,scalar_t__*) ;
 int dmar_print_path (int ,int,int const*) ;
 int printf (char*,...) ;

__attribute__((used)) static int
dmar_inst_rmrr_iter(ACPI_DMAR_HEADER *dmarh, void *arg)
{
 const ACPI_DMAR_RESERVED_MEMORY *resmem;
 const ACPI_DMAR_DEVICE_SCOPE *devscope;
 struct inst_rmrr_iter_args *iria;
 const char *ptr, *ptrend;
 device_t dev;
 struct dmar_unit *unit;
 int dev_path_len;
 uint16_t rid;

 iria = arg;

 if (dmarh->Type != ACPI_DMAR_TYPE_RESERVED_MEMORY)
  return (1);

 resmem = (ACPI_DMAR_RESERVED_MEMORY *)dmarh;
 if (resmem->Segment != iria->dmar->segment)
  return (1);

 ptr = (const char *)resmem + sizeof(*resmem);
 ptrend = (const char *)resmem + resmem->Header.Length;
 for (;;) {
  if (ptr >= ptrend)
   break;
  devscope = (const ACPI_DMAR_DEVICE_SCOPE *)ptr;
  ptr += devscope->Length;

  if (devscope->EntryType != ACPI_DMAR_SCOPE_TYPE_ENDPOINT)
   continue;
  rid = 0;
  dev_path_len = (devscope->Length -
      sizeof(ACPI_DMAR_DEVICE_SCOPE)) / 2;
  dev = dmar_path_dev(resmem->Segment, dev_path_len,
      devscope->Bus,
      (const ACPI_DMAR_PCI_PATH *)(devscope + 1), &rid);
  if (dev == ((void*)0)) {
   if (bootverbose) {
    printf("dmar%d no dev found for RMRR "
        "[%#jx, %#jx] rid %#x scope path ",
         iria->dmar->unit,
         (uintmax_t)resmem->BaseAddress,
         (uintmax_t)resmem->EndAddress,
         rid);
    dmar_print_path(devscope->Bus, dev_path_len,
        (const ACPI_DMAR_PCI_PATH *)(devscope + 1));
    printf("\n");
   }
   unit = dmar_find_by_scope(resmem->Segment,
       devscope->Bus,
       (const ACPI_DMAR_PCI_PATH *)(devscope + 1),
       dev_path_len);
   if (iria->dmar != unit)
    continue;
   dmar_get_ctx_for_devpath(iria->dmar, rid,
       resmem->Segment, devscope->Bus,
       (const ACPI_DMAR_PCI_PATH *)(devscope + 1),
       dev_path_len, 0, 1);
  } else {
   unit = dmar_find(dev, 0);
   if (iria->dmar != unit)
    continue;
   dmar_instantiate_ctx(iria->dmar, dev, 1);
  }
 }

 return (1);

}
