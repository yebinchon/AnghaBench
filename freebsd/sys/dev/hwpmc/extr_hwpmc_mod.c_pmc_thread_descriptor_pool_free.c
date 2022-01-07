
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_thread {int dummy; } ;


 int GROUPTASK_ENQUEUE (int *) ;
 int LIST_INSERT_HEAD (int *,struct pmc_thread*,int ) ;
 int THREADENTRY_SIZE ;
 int free_gtask ;
 int memset (struct pmc_thread*,int ,int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int pmc_threadfreelist ;
 scalar_t__ pmc_threadfreelist_entries ;
 scalar_t__ pmc_threadfreelist_max ;
 int pmc_threadfreelist_mtx ;
 int pt_next ;

__attribute__((used)) static void
pmc_thread_descriptor_pool_free(struct pmc_thread *pt)
{

 if (pt == ((void*)0))
  return;

 memset(pt, 0, THREADENTRY_SIZE);
 mtx_lock_spin(&pmc_threadfreelist_mtx);
 LIST_INSERT_HEAD(&pmc_threadfreelist, pt, pt_next);
 pmc_threadfreelist_entries++;
 if (pmc_threadfreelist_entries > pmc_threadfreelist_max)
  GROUPTASK_ENQUEUE(&free_gtask);
 mtx_unlock_spin(&pmc_threadfreelist_mtx);
}
