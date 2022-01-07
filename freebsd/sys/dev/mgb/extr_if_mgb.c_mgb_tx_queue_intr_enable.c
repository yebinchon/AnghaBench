
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mgb_softc {int dummy; } ;
typedef int if_ctx_t ;


 int CSR_WRITE_REG (struct mgb_softc*,int ,int ) ;
 int MGB_DMAC_INTR_ENBL_SET ;
 int MGB_DMAC_INTR_STS ;
 int MGB_DMAC_TX_INTR_ENBL (int ) ;
 int MGB_INTR_ENBL_SET ;
 int MGB_INTR_STS_TX (int ) ;
 struct mgb_softc* iflib_get_softc (int ) ;

__attribute__((used)) static int
mgb_tx_queue_intr_enable(if_ctx_t ctx, uint16_t qid)
{

 struct mgb_softc *sc;

 sc = iflib_get_softc(ctx);

 CSR_WRITE_REG(sc, MGB_INTR_ENBL_SET, MGB_INTR_STS_TX(qid));

 CSR_WRITE_REG(sc, MGB_DMAC_INTR_STS, MGB_DMAC_TX_INTR_ENBL(qid));
 CSR_WRITE_REG(sc, MGB_DMAC_INTR_ENBL_SET, MGB_DMAC_TX_INTR_ENBL(qid));
 return (0);
}
