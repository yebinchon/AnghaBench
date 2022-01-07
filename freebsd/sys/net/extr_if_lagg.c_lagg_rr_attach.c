
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_softc {int sc_bkt; int sc_bkt_count; scalar_t__ sc_seq; } ;



__attribute__((used)) static void
lagg_rr_attach(struct lagg_softc *sc)
{
 sc->sc_seq = 0;
 sc->sc_bkt_count = sc->sc_bkt;
}
