
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_softc {scalar_t__ sc_rx_fqr; } ;


 int qman_fqr_free (scalar_t__) ;

void
dtsec_rm_fqr_rx_free(struct dtsec_softc *sc)
{

 if (sc->sc_rx_fqr)
  qman_fqr_free(sc->sc_rx_fqr);
}
