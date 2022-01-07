
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int KASSERT (int,char*) ;
 int NVSIDS ;
 int VSID_NBPW ;
 int moea64_slb_mutex ;
 int* moea64_vsid_bitmap ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
moea64_release_vsid(uint64_t vsid)
{
 int idx, mask;

 mtx_lock(&moea64_slb_mutex);
 idx = vsid & (NVSIDS-1);
 mask = 1 << (idx % VSID_NBPW);
 idx /= VSID_NBPW;
 KASSERT(moea64_vsid_bitmap[idx] & mask,
     ("Freeing unallocated VSID %#jx", vsid));
 moea64_vsid_bitmap[idx] &= ~mask;
 mtx_unlock(&moea64_slb_mutex);
}
