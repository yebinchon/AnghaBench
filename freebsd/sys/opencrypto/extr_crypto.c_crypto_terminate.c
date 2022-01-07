
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_mtx; } ;


 int CRYPTO_DRIVER_LOCK () ;
 int CRYPTO_DRIVER_UNLOCK () ;
 int MA_OWNED ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int PWAIT ;
 int crypto_drivers_mtx ;
 int msleep (struct proc*,int *,int ,char*,int ) ;
 int mtx_assert (int *,int ) ;
 int wakeup_one (void*) ;

__attribute__((used)) static void
crypto_terminate(struct proc **pp, void *q)
{
 struct proc *p;

 mtx_assert(&crypto_drivers_mtx, MA_OWNED);
 p = *pp;
 *pp = ((void*)0);
 if (p) {
  wakeup_one(q);
  PROC_LOCK(p);
  CRYPTO_DRIVER_UNLOCK();
  msleep(p, &p->p_mtx, PWAIT, "crypto_destroy", 0);
  PROC_UNLOCK(p);
  CRYPTO_DRIVER_LOCK();
 }
}
