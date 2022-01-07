
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_utrap {int ut_refcnt; } ;


 int mtx_pool_lock (int ,struct md_utrap*) ;
 int mtx_pool_unlock (int ,struct md_utrap*) ;
 int mtxpool_sleep ;

struct md_utrap *
utrap_hold(struct md_utrap *ut)
{

 if (ut == ((void*)0))
  return (((void*)0));
 mtx_pool_lock(mtxpool_sleep, ut);
 ut->ut_refcnt++;
 mtx_pool_unlock(mtxpool_sleep, ut);
 return (ut);
}
