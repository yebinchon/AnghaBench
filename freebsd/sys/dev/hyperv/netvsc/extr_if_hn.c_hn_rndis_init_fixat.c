
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {int dummy; } ;


 int hn_disable_rx (struct hn_softc*) ;
 int hn_drain_rxtx (struct hn_softc*,int) ;

__attribute__((used)) static void
hn_rndis_init_fixat(struct hn_softc *sc, int nchan)
{

 hn_disable_rx(sc);
 hn_drain_rxtx(sc, nchan);
}
