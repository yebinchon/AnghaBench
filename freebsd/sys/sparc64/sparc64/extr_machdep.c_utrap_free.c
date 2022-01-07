
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_utrap {int ut_refcnt; } ;


 int M_SUBPROC ;
 int free (struct md_utrap*,int ) ;
 int mtx_pool_lock (int ,struct md_utrap*) ;
 int mtx_pool_unlock (int ,struct md_utrap*) ;
 int mtxpool_sleep ;

void
utrap_free(struct md_utrap *ut)
{
 int refcnt;

 if (ut == ((void*)0))
  return;
 mtx_pool_lock(mtxpool_sleep, ut);
 ut->ut_refcnt--;
 refcnt = ut->ut_refcnt;
 mtx_pool_unlock(mtxpool_sleep, ut);
 if (refcnt == 0)
  free(ut, M_SUBPROC);
}
