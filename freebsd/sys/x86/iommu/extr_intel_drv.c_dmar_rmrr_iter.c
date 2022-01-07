
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rmrr_iter_args {scalar_t__ dev_domain; int rmrr_entries; int domain; int dev_path_len; int dev_path; int dev_busno; } ;
struct dmar_map_entry {int end; int start; } ;
struct TYPE_10__ {int Length; } ;
struct TYPE_9__ {scalar_t__ Type; } ;
struct TYPE_7__ {int Length; } ;
struct TYPE_8__ {scalar_t__ Segment; int EndAddress; int BaseAddress; TYPE_1__ Header; } ;
typedef TYPE_2__ ACPI_DMAR_RESERVED_MEMORY ;
typedef TYPE_3__ ACPI_DMAR_HEADER ;
typedef TYPE_4__ ACPI_DMAR_DEVICE_SCOPE ;


 scalar_t__ ACPI_DMAR_TYPE_RESERVED_MEMORY ;
 int DMAR_PGF_WAITOK ;
 int TAILQ_INSERT_TAIL (int ,struct dmar_map_entry*,int ) ;
 struct dmar_map_entry* dmar_gas_alloc_entry (int ,int ) ;
 int dmar_match_devscope (TYPE_4__*,int ,int ,int ) ;
 int unroll_link ;

__attribute__((used)) static int
dmar_rmrr_iter(ACPI_DMAR_HEADER *dmarh, void *arg)
{
 struct rmrr_iter_args *ria;
 ACPI_DMAR_RESERVED_MEMORY *resmem;
 ACPI_DMAR_DEVICE_SCOPE *devscope;
 struct dmar_map_entry *entry;
 char *ptr, *ptrend;
 int match;

 if (dmarh->Type != ACPI_DMAR_TYPE_RESERVED_MEMORY)
  return (1);

 ria = arg;
 resmem = (ACPI_DMAR_RESERVED_MEMORY *)dmarh;
 if (resmem->Segment != ria->dev_domain)
  return (1);

 ptr = (char *)resmem + sizeof(*resmem);
 ptrend = (char *)resmem + resmem->Header.Length;
 for (;;) {
  if (ptr >= ptrend)
   break;
  devscope = (ACPI_DMAR_DEVICE_SCOPE *)ptr;
  ptr += devscope->Length;
  match = dmar_match_devscope(devscope, ria->dev_busno,
      ria->dev_path, ria->dev_path_len);
  if (match == 1) {
   entry = dmar_gas_alloc_entry(ria->domain,
       DMAR_PGF_WAITOK);
   entry->start = resmem->BaseAddress;

   entry->end = resmem->EndAddress;
   TAILQ_INSERT_TAIL(ria->rmrr_entries, entry,
       unroll_link);
  }
 }

 return (1);
}
