
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_softc {int refcnt; int submit_lock; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int wakeup (int*) ;

__attribute__((used)) static void
ioat_put(struct ioat_softc *ioat)
{

 mtx_assert(&ioat->submit_lock, MA_OWNED);
 KASSERT(ioat->refcnt >= 1, ("refcnt error"));

 if (--ioat->refcnt == 0)
  wakeup(&ioat->refcnt);
}
