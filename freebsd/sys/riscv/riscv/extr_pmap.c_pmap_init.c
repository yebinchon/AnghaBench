
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
struct md_page {int pv_list; } ;
struct TYPE_4__ {int pv_list; } ;
struct TYPE_3__ {int end; } ;


 int L2_SIZE ;
 int MTX_DEF ;
 int M_WAITOK ;
 int M_ZERO ;
 int NPV_LIST_LOCKS ;
 int TAILQ_INIT (int *) ;
 int allpmaps_lock ;
 int howmany (int ,int ) ;
 scalar_t__ kmem_malloc (scalar_t__,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int * pagesizes ;
 int pv_chunks_mutex ;
 TYPE_2__ pv_dummy ;
 int * pv_list_locks ;
 struct md_page* pv_table ;
 scalar_t__ round_page (scalar_t__) ;
 int rw_init (int *,char*) ;
 scalar_t__ superpages_enabled ;
 int vm_phys_nsegs ;
 TYPE_1__* vm_phys_segs ;

void
pmap_init(void)
{
 vm_size_t s;
 int i, pv_npg;




 mtx_init(&pv_chunks_mutex, "pmap pv chunk list", ((void*)0), MTX_DEF);
 mtx_init(&allpmaps_lock, "allpmaps", ((void*)0), MTX_DEF);




 for (i = 0; i < NPV_LIST_LOCKS; i++)
  rw_init(&pv_list_locks[i], "pmap pv list");




 pv_npg = howmany(vm_phys_segs[vm_phys_nsegs - 1].end, L2_SIZE);




 s = (vm_size_t)(pv_npg * sizeof(struct md_page));
 s = round_page(s);
 pv_table = (struct md_page *)kmem_malloc(s, M_WAITOK | M_ZERO);
 for (i = 0; i < pv_npg; i++)
  TAILQ_INIT(&pv_table[i].pv_list);
 TAILQ_INIT(&pv_dummy.pv_list);

 if (superpages_enabled)
  pagesizes[1] = L2_SIZE;
}
