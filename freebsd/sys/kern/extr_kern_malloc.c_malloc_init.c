
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct malloc_type_internal {int mti_stats; } ;
struct malloc_type {scalar_t__ ks_magic; struct malloc_type* ks_next; struct malloc_type_internal* ks_handle; } ;
struct TYPE_2__ {scalar_t__ v_page_count; } ;


 int KASSERT (int,char*) ;
 scalar_t__ M_MAGIC ;
 int M_WAITOK ;
 int M_ZERO ;
 int kmemcount ;
 struct malloc_type* kmemstatistics ;
 int malloc_mtx ;
 int mt_stats_zone ;
 int mt_zone ;
 int mtp_set_subzone (struct malloc_type*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*) ;
 struct malloc_type_internal* uma_zalloc (int ,int) ;
 int uma_zalloc_pcpu (int ,int) ;
 TYPE_1__ vm_cnt ;

void
malloc_init(void *data)
{
 struct malloc_type_internal *mtip;
 struct malloc_type *mtp;

 KASSERT(vm_cnt.v_page_count != 0, ("malloc_register before vm_init"));

 mtp = data;
 if (mtp->ks_magic != M_MAGIC)
  panic("malloc_init: bad malloc type magic");

 mtip = uma_zalloc(mt_zone, M_WAITOK | M_ZERO);
 mtip->mti_stats = uma_zalloc_pcpu(mt_stats_zone, M_WAITOK | M_ZERO);
 mtp->ks_handle = mtip;
 mtp_set_subzone(mtp);

 mtx_lock(&malloc_mtx);
 mtp->ks_next = kmemstatistics;
 kmemstatistics = mtp;
 kmemcount++;
 mtx_unlock(&malloc_mtx);
}
