
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagerops {int (* pgo_init ) () ;} ;


 size_t nitems (struct pagerops**) ;
 struct pagerops** pagertab ;
 int stub1 () ;

void
vm_pager_init(void)
{
 struct pagerops **pgops;




 for (pgops = pagertab; pgops < &pagertab[nitems(pagertab)]; pgops++)
  if ((*pgops)->pgo_init != ((void*)0))
   (*(*pgops)->pgo_init)();
}
