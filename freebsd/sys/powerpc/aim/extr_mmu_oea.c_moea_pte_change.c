
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct pte {int dummy; } ;


 int moea_pte_set (struct pte*,struct pte*) ;
 int moea_pte_unset (struct pte*,struct pte*,int ) ;

__attribute__((used)) static __inline void
moea_pte_change(struct pte *pt, struct pte *pvo_pt, vm_offset_t va)
{




 moea_pte_unset(pt, pvo_pt, va);
 moea_pte_set(pt, pvo_pt);
}
