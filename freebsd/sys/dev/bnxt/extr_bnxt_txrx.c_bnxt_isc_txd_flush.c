
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct bnxt_softc {struct bnxt_ring* tx_rings; } ;
struct bnxt_ring {int dummy; } ;
typedef int qidx_t ;


 int BNXT_TX_DB (struct bnxt_ring*,int ) ;

__attribute__((used)) static void
bnxt_isc_txd_flush(void *sc, uint16_t txqid, qidx_t pidx)
{
 struct bnxt_softc *softc = (struct bnxt_softc *)sc;
 struct bnxt_ring *tx_ring = &softc->tx_rings[txqid];


 BNXT_TX_DB(tx_ring, pidx);

 BNXT_TX_DB(tx_ring, pidx);
 return;
}
