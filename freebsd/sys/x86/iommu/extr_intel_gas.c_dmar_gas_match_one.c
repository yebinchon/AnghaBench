
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dmar_map_entry {scalar_t__ end; scalar_t__ free_after; } ;
struct dmar_gas_match_args {scalar_t__ size; scalar_t__ offset; int gas_flags; TYPE_2__* entry; TYPE_1__* common; } ;
typedef scalar_t__ dmar_gaddr_t ;
struct TYPE_4__ {scalar_t__ start; } ;
struct TYPE_3__ {scalar_t__ boundary; int alignment; } ;


 int DMAR_GM_CANSPLIT ;
 scalar_t__ DMAR_PAGE_SIZE ;
 scalar_t__ dmar_test_boundary (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ rounddown2 (scalar_t__,scalar_t__) ;
 scalar_t__ roundup2 (scalar_t__,int ) ;

__attribute__((used)) static bool
dmar_gas_match_one(struct dmar_gas_match_args *a, struct dmar_map_entry *prev,
    dmar_gaddr_t end)
{
 dmar_gaddr_t bs, start;

 if (a->entry->start + a->size > end)
  return (0);


 if (a->entry->start < prev->end + DMAR_PAGE_SIZE ||
     a->entry->start + a->size + a->offset + DMAR_PAGE_SIZE >
     prev->end + prev->free_after)
  return (0);


 if (dmar_test_boundary(a->entry->start + a->offset, a->size,
     a->common->boundary))
  return (1);






 bs = rounddown2(a->entry->start + a->offset + a->common->boundary,
     a->common->boundary);
 start = roundup2(bs, a->common->alignment);

 if (start + a->offset + a->size + DMAR_PAGE_SIZE <=
     prev->end + prev->free_after &&
     start + a->offset + a->size <= end &&
     dmar_test_boundary(start + a->offset, a->size,
     a->common->boundary)) {
  a->entry->start = start;
  return (1);
 }
 if ((a->gas_flags & DMAR_GM_CANSPLIT) != 0) {
  a->size = bs - a->entry->start;
  return (1);
 }

 return (0);
}
