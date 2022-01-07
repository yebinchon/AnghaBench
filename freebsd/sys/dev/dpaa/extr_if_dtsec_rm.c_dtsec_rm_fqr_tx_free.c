
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_softc {scalar_t__ sc_tx_conf_fqr; scalar_t__ sc_tx_fqr; } ;


 int qman_fqr_free (scalar_t__) ;

void
dtsec_rm_fqr_tx_free(struct dtsec_softc *sc)
{

 if (sc->sc_tx_fqr)
  qman_fqr_free(sc->sc_tx_fqr);

 if (sc->sc_tx_conf_fqr)
  qman_fqr_free(sc->sc_tx_conf_fqr);
}
