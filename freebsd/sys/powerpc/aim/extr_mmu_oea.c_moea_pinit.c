
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int u_int ;
typedef TYPE_1__* pmap_t ;
typedef int mmu_t ;
struct TYPE_3__ {int * pm_sr; struct TYPE_3__* pmap_phys; int pmap_pvo; } ;


 int KASSERT (int,char*) ;
 int NPMAPS ;
 int RB_INIT (int *) ;
 int VM_MIN_KERNEL_ADDRESS ;
 int VSID_MAKE (int,int) ;
 int VSID_NBPW ;
 int ffs (int) ;
 scalar_t__ moea_kextract (int ,int ) ;
 int* moea_vsid_bitmap ;
 int moea_vsid_mutex ;
 int moea_vsidcontext ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;
 int rounddown2 (int,int) ;

void
moea_pinit(mmu_t mmu, pmap_t pmap)
{
 int i, mask;
 u_int entropy;

 KASSERT((int)pmap < VM_MIN_KERNEL_ADDRESS, ("moea_pinit: virt pmap"));
 RB_INIT(&pmap->pmap_pvo);

 entropy = 0;
 __asm __volatile("mftb %0" : "=r"(entropy));

 if ((pmap->pmap_phys = (pmap_t)moea_kextract(mmu, (vm_offset_t)pmap))
     == ((void*)0)) {
  pmap->pmap_phys = pmap;
 }


 mtx_lock(&moea_vsid_mutex);



 for (i = 0; i < NPMAPS; i += VSID_NBPW) {
  u_int hash, n;
  moea_vsidcontext = (moea_vsidcontext * 0x1105) + entropy;
  hash = moea_vsidcontext & (NPMAPS - 1);
  if (hash == 0)
   continue;
  n = hash >> 5;
  mask = 1 << (hash & (VSID_NBPW - 1));
  hash = (moea_vsidcontext & 0xfffff);
  if (moea_vsid_bitmap[n] & mask) {

   if (moea_vsid_bitmap[n] == 0xffffffff) {
    entropy = (moea_vsidcontext >> 20);
    continue;
   }
   i = ffs(~moea_vsid_bitmap[n]) - 1;
   mask = 1 << i;
   hash &= rounddown2(0xfffff, VSID_NBPW);
   hash |= i;
  }
  KASSERT(!(moea_vsid_bitmap[n] & mask),
      ("Allocating in-use VSID group %#x\n", hash));
  moea_vsid_bitmap[n] |= mask;
  for (i = 0; i < 16; i++)
   pmap->pm_sr[i] = VSID_MAKE(i, hash);
  mtx_unlock(&moea_vsid_mutex);
  return;
 }

 mtx_unlock(&moea_vsid_mutex);
 panic("moea_pinit: out of segments");
}
