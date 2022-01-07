
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_6__ {int pte_hi; } ;
struct TYPE_4__ {TYPE_3__ pte; } ;
struct pvo_entry {int pvo_vaddr; TYPE_1__ pvo_pte; } ;
struct pte {int pte_hi; } ;
struct TYPE_5__ {struct pte* pt; } ;


 int MA_OWNED ;
 int PTE_HID ;
 int PTE_VALID ;
 int PVO_PTEGIDX_CLR (struct pvo_entry*) ;
 int moea_pte_overflow ;
 int moea_pte_set (struct pte*,struct pte*) ;
 struct pvo_entry* moea_pte_spillable_ident (size_t) ;
 int moea_pte_unset (struct pte*,TYPE_3__*,int ) ;
 size_t moea_pteg_mask ;
 TYPE_2__* moea_pteg_table ;
 int moea_pvo_pte_index (struct pvo_entry*,size_t) ;
 int moea_table_mutex ;
 int mtx_assert (int *,int ) ;
 int panic (char*,...) ;

__attribute__((used)) static int
moea_pte_insert(u_int ptegidx, struct pte *pvo_pt)
{
 struct pte *pt;
 struct pvo_entry *victim_pvo;
 int i;
 int victim_idx;
 u_int pteg_bkpidx = ptegidx;

 mtx_assert(&moea_table_mutex, MA_OWNED);




 for (pt = moea_pteg_table[ptegidx].pt, i = 0; i < 8; i++, pt++) {
  if ((pt->pte_hi & PTE_VALID) == 0) {
   pvo_pt->pte_hi &= ~PTE_HID;
   moea_pte_set(pt, pvo_pt);
   return (i);
  }
 }




 ptegidx ^= moea_pteg_mask;

 for (pt = moea_pteg_table[ptegidx].pt, i = 0; i < 8; i++, pt++) {
  if ((pt->pte_hi & PTE_VALID) == 0) {
   pvo_pt->pte_hi |= PTE_HID;
   moea_pte_set(pt, pvo_pt);
   return (i);
  }
 }


 ptegidx = pteg_bkpidx;

 victim_pvo = moea_pte_spillable_ident(ptegidx);
 if (victim_pvo == ((void*)0)) {
  ptegidx ^= moea_pteg_mask;
  victim_pvo = moea_pte_spillable_ident(ptegidx);
 }

 if (victim_pvo == ((void*)0)) {
  panic("moea_pte_insert: overflow");
  return (-1);
 }

 victim_idx = moea_pvo_pte_index(victim_pvo, ptegidx);

 if (pteg_bkpidx == ptegidx)
  pvo_pt->pte_hi &= ~PTE_HID;
 else
  pvo_pt->pte_hi |= PTE_HID;






 pt = &moea_pteg_table[victim_idx >> 3].pt[victim_idx & 7];

 if (pt->pte_hi != victim_pvo->pvo_pte.pte.pte_hi)
     panic("Victim PVO doesn't match PTE! PVO: %8x, PTE: %8x", victim_pvo->pvo_pte.pte.pte_hi, pt->pte_hi);




 moea_pte_unset(pt, &victim_pvo->pvo_pte.pte, victim_pvo->pvo_vaddr);
 PVO_PTEGIDX_CLR(victim_pvo);
 moea_pte_overflow++;
 moea_pte_set(pt, pvo_pt);

 return (victim_idx & 7);
}
