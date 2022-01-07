
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366rb_softc {int callout_tick; } ;


 int callout_reset (int *,int ,void (*) (void*),struct rtl8366rb_softc*) ;
 int hz ;
 int rtl833rb_miipollstat (struct rtl8366rb_softc*) ;

__attribute__((used)) static void
rtl8366rb_tick(void *arg)
{
 struct rtl8366rb_softc *sc;

 sc = arg;

 rtl833rb_miipollstat(sc);
 callout_reset(&sc->callout_tick, hz, rtl8366rb_tick, sc);
}
