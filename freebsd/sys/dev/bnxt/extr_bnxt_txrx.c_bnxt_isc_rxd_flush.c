
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef size_t uint16_t ;
struct bnxt_softc {TYPE_1__* rx_cp_rings; struct bnxt_ring* ag_rings; struct bnxt_ring* rx_rings; } ;
struct bnxt_ring {int dummy; } ;
typedef int qidx_t ;
struct TYPE_2__ {scalar_t__ cons; int ring; } ;


 int BNXT_CP_IDX_DISABLE_DB (int *,scalar_t__) ;
 int BNXT_RX_DB (struct bnxt_ring*,int ) ;
 int RING_NEXT (struct bnxt_ring*,int ) ;
 scalar_t__ UINT32_MAX ;

__attribute__((used)) static void
bnxt_isc_rxd_flush(void *sc, uint16_t rxqid, uint8_t flid,
    qidx_t pidx)
{
 struct bnxt_softc *softc = (struct bnxt_softc *)sc;
 struct bnxt_ring *rx_ring;

 if (flid == 0)
  rx_ring = &softc->rx_rings[rxqid];
 else
  rx_ring = &softc->ag_rings[rxqid];






 if (softc->rx_cp_rings[rxqid].cons != UINT32_MAX)
  BNXT_CP_IDX_DISABLE_DB(&softc->rx_cp_rings[rxqid].ring,
      softc->rx_cp_rings[rxqid].cons);

 BNXT_RX_DB(rx_ring, RING_NEXT(rx_ring, pidx));

 BNXT_RX_DB(rx_ring, RING_NEXT(rx_ring, pidx));
 return;
}
