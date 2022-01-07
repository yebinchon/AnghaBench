
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_softc {int ctx; } ;


 int FILTER_HANDLED ;
 int iflib_admin_intr_deferred (int ) ;

__attribute__((used)) static int
mgb_legacy_intr(void *xsc)
{
 struct mgb_softc *sc;

 sc = xsc;
 iflib_admin_intr_deferred(sc->ctx);
 return (FILTER_HANDLED);
}
