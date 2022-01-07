
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {int dummy; } ;


 int hn_rndis_halt (struct hn_softc*) ;

void
hn_rndis_detach(struct hn_softc *sc)
{


 hn_rndis_halt(sc);
}
