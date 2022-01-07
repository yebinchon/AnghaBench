
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pte_hi; } ;
struct TYPE_4__ {TYPE_1__ pte; } ;
struct pvo_entry {TYPE_2__ pvo_pte; } ;


 int PTE_HID ;
 int PVO_PTEGIDX_GET (struct pvo_entry const*) ;
 int moea_pteg_mask ;

__attribute__((used)) static __inline int
moea_pvo_pte_index(const struct pvo_entry *pvo, int ptegidx)
{
 int pteidx;






 pteidx = ptegidx * 8 + PVO_PTEGIDX_GET(pvo);
 if (pvo->pvo_pte.pte.pte_hi & PTE_HID)
  pteidx ^= moea_pteg_mask * 8;

 return (pteidx);
}
