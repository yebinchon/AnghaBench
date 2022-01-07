
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dme_softc {int dme_txlen; int dme_txbusy; scalar_t__ dme_txready; TYPE_1__* dme_ifp; } ;
struct TYPE_2__ {int if_drv_flags; } ;


 int DME_ASSERT_LOCKED (struct dme_softc*) ;
 int DME_ISR ;
 int DME_TCR ;
 int DME_TXPLH ;
 int DME_TXPLL ;
 int DTR3 (char*,int ,int,scalar_t__) ;
 int KASSERT (scalar_t__,char*) ;
 int TCR_TXREQ ;
 int dme_read_reg (struct dme_softc*,int ) ;
 int dme_write_reg (struct dme_softc*,int ,int) ;

void
dme_transmit(struct dme_softc *sc)
{

 DME_ASSERT_LOCKED(sc);
 KASSERT(sc->dme_txready, ("transmit without txready"));

 dme_write_reg(sc, DME_TXPLL, sc->dme_txlen & 0xff);
 dme_write_reg(sc, DME_TXPLH, (sc->dme_txlen >> 8) & 0xff );


 dme_read_reg(sc, DME_ISR);

 dme_write_reg(sc, DME_TCR, TCR_TXREQ);

 sc->dme_txready = 0;
 sc->dme_txbusy = 1;
 DTR3("dme_transmit done, flags %#x busy %d ready %d",
     sc->dme_ifp->if_drv_flags, sc->dme_txbusy, sc->dme_txready);
}
