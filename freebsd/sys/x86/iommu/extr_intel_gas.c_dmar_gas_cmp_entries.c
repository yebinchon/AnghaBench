
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct dmar_map_entry {scalar_t__ start; scalar_t__ end; } ;


 int KASSERT (int,char*) ;

__attribute__((used)) static int
dmar_gas_cmp_entries(struct dmar_map_entry *a, struct dmar_map_entry *b)
{


 KASSERT(a->start <= a->end, ("inverted entry %p (%jx, %jx)",
     a, (uintmax_t)a->start, (uintmax_t)a->end));
 KASSERT(b->start <= b->end, ("inverted entry %p (%jx, %jx)",
     b, (uintmax_t)b->start, (uintmax_t)b->end));
 KASSERT(a->end <= b->start || b->end <= a->start ||
     a->end == a->start || b->end == b->start,
     ("overlapping entries %p (%jx, %jx) %p (%jx, %jx)",
     a, (uintmax_t)a->start, (uintmax_t)a->end,
     b, (uintmax_t)b->start, (uintmax_t)b->end));

 if (a->end < b->end)
  return (-1);
 else if (b->end < a->end)
  return (1);
 return (0);
}
