
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
typedef int mmu_t ;
struct TYPE_3__ {scalar_t__* pm_sr; } ;


 int NPMAPS ;
 int VSID_NBPW ;
 int VSID_TO_HASH (scalar_t__) ;
 int* moea_vsid_bitmap ;
 int moea_vsid_mutex ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;

void
moea_release(mmu_t mmu, pmap_t pmap)
{
        int idx, mask;




        if (pmap->pm_sr[0] == 0)
                panic("moea_release");

 mtx_lock(&moea_vsid_mutex);
        idx = VSID_TO_HASH(pmap->pm_sr[0]) & (NPMAPS-1);
        mask = 1 << (idx % VSID_NBPW);
        idx /= VSID_NBPW;
        moea_vsid_bitmap[idx] &= ~mask;
 mtx_unlock(&moea_vsid_mutex);
}
