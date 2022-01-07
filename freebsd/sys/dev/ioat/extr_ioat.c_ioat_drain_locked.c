
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_softc {scalar_t__ refcnt; int submit_lock; } ;


 int MA_OWNED ;
 int msleep (scalar_t__*,int *,int ,char*,int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
ioat_drain_locked(struct ioat_softc *ioat)
{

 mtx_assert(&ioat->submit_lock, MA_OWNED);

 while (ioat->refcnt > 0)
  msleep(&ioat->refcnt, &ioat->submit_lock, 0, "ioat_drain", 0);
}
