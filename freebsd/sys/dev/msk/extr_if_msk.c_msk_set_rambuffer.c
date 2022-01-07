
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msk_softc {int* msk_rxqstart; int* msk_rxqend; scalar_t__ msk_rxqsize; int* msk_txqstart; int* msk_txqend; } ;
struct msk_if_softc {int msk_flags; size_t msk_port; int msk_txq; int msk_rxq; struct msk_softc* msk_softc; } ;


 int CSR_READ_1 (struct msk_softc*,int ) ;
 int CSR_WRITE_1 (struct msk_softc*,int ,int ) ;
 int CSR_WRITE_4 (struct msk_softc*,int ,int) ;
 int MSK_FLAG_RAMBUF ;
 scalar_t__ MSK_MIN_RXQ_SIZE ;
 int MSK_RB_LLPP_B ;
 int MSK_RB_LLPP_S ;
 int MSK_RB_ULPP ;
 int RB_ADDR (int ,int ) ;
 int RB_CTRL ;
 int RB_ENA_OP_MD ;
 int RB_ENA_STFWD ;
 int RB_END ;
 int RB_RP ;
 int RB_RST_CLR ;
 int RB_RX_LTPP ;
 int RB_RX_UTPP ;
 int RB_START ;
 int RB_WP ;

__attribute__((used)) static void
msk_set_rambuffer(struct msk_if_softc *sc_if)
{
 struct msk_softc *sc;
 int ltpp, utpp;

 sc = sc_if->msk_softc;
 if ((sc_if->msk_flags & MSK_FLAG_RAMBUF) == 0)
  return;


 CSR_WRITE_1(sc, RB_ADDR(sc_if->msk_rxq, RB_CTRL), RB_RST_CLR);
 CSR_WRITE_4(sc, RB_ADDR(sc_if->msk_rxq, RB_START),
     sc->msk_rxqstart[sc_if->msk_port] / 8);
 CSR_WRITE_4(sc, RB_ADDR(sc_if->msk_rxq, RB_END),
     sc->msk_rxqend[sc_if->msk_port] / 8);
 CSR_WRITE_4(sc, RB_ADDR(sc_if->msk_rxq, RB_WP),
     sc->msk_rxqstart[sc_if->msk_port] / 8);
 CSR_WRITE_4(sc, RB_ADDR(sc_if->msk_rxq, RB_RP),
     sc->msk_rxqstart[sc_if->msk_port] / 8);

 utpp = (sc->msk_rxqend[sc_if->msk_port] + 1 -
     sc->msk_rxqstart[sc_if->msk_port] - MSK_RB_ULPP) / 8;
 ltpp = (sc->msk_rxqend[sc_if->msk_port] + 1 -
     sc->msk_rxqstart[sc_if->msk_port] - MSK_RB_LLPP_B) / 8;
 if (sc->msk_rxqsize < MSK_MIN_RXQ_SIZE)
  ltpp += (MSK_RB_LLPP_B - MSK_RB_LLPP_S) / 8;
 CSR_WRITE_4(sc, RB_ADDR(sc_if->msk_rxq, RB_RX_UTPP), utpp);
 CSR_WRITE_4(sc, RB_ADDR(sc_if->msk_rxq, RB_RX_LTPP), ltpp);


 CSR_WRITE_1(sc, RB_ADDR(sc_if->msk_rxq, RB_CTRL), RB_ENA_OP_MD);
 CSR_READ_1(sc, RB_ADDR(sc_if->msk_rxq, RB_CTRL));


 CSR_WRITE_1(sc, RB_ADDR(sc_if->msk_txq, RB_CTRL), RB_RST_CLR);
 CSR_WRITE_4(sc, RB_ADDR(sc_if->msk_txq, RB_START),
     sc->msk_txqstart[sc_if->msk_port] / 8);
 CSR_WRITE_4(sc, RB_ADDR(sc_if->msk_txq, RB_END),
     sc->msk_txqend[sc_if->msk_port] / 8);
 CSR_WRITE_4(sc, RB_ADDR(sc_if->msk_txq, RB_WP),
     sc->msk_txqstart[sc_if->msk_port] / 8);
 CSR_WRITE_4(sc, RB_ADDR(sc_if->msk_txq, RB_RP),
     sc->msk_txqstart[sc_if->msk_port] / 8);

 CSR_WRITE_1(sc, RB_ADDR(sc_if->msk_txq, RB_CTRL), RB_ENA_STFWD);
 CSR_WRITE_1(sc, RB_ADDR(sc_if->msk_txq, RB_CTRL), RB_ENA_OP_MD);
 CSR_READ_1(sc, RB_ADDR(sc_if->msk_txq, RB_CTRL));
}
