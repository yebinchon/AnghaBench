
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmc_thread {int dummy; } ;


 struct pmc_thread* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct pmc_thread*,int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int pmc_threadfreelist ;
 int pmc_threadfreelist_entries ;
 int pmc_threadfreelist_mtx ;
 int pt_next ;

__attribute__((used)) static struct pmc_thread *
pmc_thread_descriptor_pool_alloc(void)
{
 struct pmc_thread *pt;

 mtx_lock_spin(&pmc_threadfreelist_mtx);
 if ((pt = LIST_FIRST(&pmc_threadfreelist)) != ((void*)0)) {
  LIST_REMOVE(pt, pt_next);
  pmc_threadfreelist_entries--;
 }
 mtx_unlock_spin(&pmc_threadfreelist_mtx);

 return (pt);
}
