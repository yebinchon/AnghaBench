
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl_softc {scalar_t__ sc_nrxfree; int sc_imask; int sc_mh; scalar_t__ sc_rxblocked; } ;
struct TYPE_2__ {int ext_buf; struct mwl_softc* ext_arg1; } ;
struct mbuf {TYPE_1__ m_ext; } ;


 int mwl_hal_intrset (int ,int ) ;
 int mwl_putrxdma (struct mwl_softc*,int ) ;
 scalar_t__ mwl_rxdmalow ;

__attribute__((used)) static void
mwl_ext_free(struct mbuf *m)
{
 struct mwl_softc *sc = m->m_ext.ext_arg1;


 mwl_putrxdma(sc, m->m_ext.ext_buf);





 if (sc->sc_rxblocked && sc->sc_nrxfree > mwl_rxdmalow) {
  sc->sc_rxblocked = 0;
  mwl_hal_intrset(sc->sc_mh, sc->sc_imask);
 }
}
