
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_phys_fictitious_seg {scalar_t__ start; scalar_t__ end; } ;


 int KASSERT (int,char*) ;

__attribute__((used)) static inline int
vm_phys_fictitious_in_range(struct vm_phys_fictitious_seg *p,
    struct vm_phys_fictitious_seg *range)
{

 KASSERT(range->start != 0 && range->end != 0,
     ("Invalid range passed on search for vm_fictitious page"));
 if (p->start >= range->end)
  return (1);
 if (p->start < range->start)
  return (-1);

 return (0);
}
