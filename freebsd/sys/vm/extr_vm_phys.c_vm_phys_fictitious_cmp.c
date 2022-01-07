
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct vm_phys_fictitious_seg {scalar_t__ end; scalar_t__ start; } ;


 int KASSERT (int,char*) ;
 int panic (char*,int ,int ,int ,int ) ;
 int vm_phys_fictitious_in_range (struct vm_phys_fictitious_seg*,struct vm_phys_fictitious_seg*) ;

__attribute__((used)) static int
vm_phys_fictitious_cmp(struct vm_phys_fictitious_seg *p1,
    struct vm_phys_fictitious_seg *p2)
{


 if (p1->end == 0)
  return (vm_phys_fictitious_in_range(p1, p2));

 KASSERT(p2->end != 0,
    ("Invalid range passed as second parameter to vm fictitious comparison"));


 if (p1->end <= p2->start)
  return (-1);
 if (p1->start >= p2->end)
  return (1);

 panic("Trying to add overlapping vm fictitious ranges:\n"
     "[%#jx:%#jx] and [%#jx:%#jx]", (uintmax_t)p1->start,
     (uintmax_t)p1->end, (uintmax_t)p2->start, (uintmax_t)p2->end);
}
