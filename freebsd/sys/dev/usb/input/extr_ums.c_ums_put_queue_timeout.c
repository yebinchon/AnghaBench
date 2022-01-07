
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ums_softc {int sc_mtx; } ;


 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int ums_evdev_push (struct ums_softc*,int ,int ,int ,int ,int ) ;
 int ums_put_queue (struct ums_softc*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
ums_put_queue_timeout(void *__sc)
{
 struct ums_softc *sc = __sc;

 mtx_assert(&sc->sc_mtx, MA_OWNED);

 ums_put_queue(sc, 0, 0, 0, 0, 0);



}
