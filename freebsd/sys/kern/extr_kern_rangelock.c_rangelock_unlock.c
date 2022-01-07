
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rangelock {int dummy; } ;
struct mtx {int dummy; } ;


 int MPASS (int) ;
 int mtx_lock (struct mtx*) ;
 int rangelock_unlock_locked (struct rangelock*,void*,struct mtx*,int) ;

void
rangelock_unlock(struct rangelock *lock, void *cookie, struct mtx *ilk)
{

 MPASS(lock != ((void*)0) && cookie != ((void*)0) && ilk != ((void*)0));

 mtx_lock(ilk);
 rangelock_unlock_locked(lock, cookie, ilk, 1);
}
