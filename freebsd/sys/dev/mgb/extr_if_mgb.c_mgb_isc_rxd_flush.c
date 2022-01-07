
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int last_tail; } ;
struct mgb_softc {TYPE_1__ rx_ring_data; } ;
typedef int qidx_t ;


 int CSR_WRITE_REG (struct mgb_softc*,int ,int ) ;
 int KASSERT (int,char*) ;
 int MGB_DMA_RX_TAIL (scalar_t__) ;

__attribute__((used)) static void
mgb_isc_rxd_flush(void *xsc, uint16_t rxqid, uint8_t flid, qidx_t pidx)
{
 struct mgb_softc *sc;

 sc = xsc;

 KASSERT(rxqid == 0, ("tried to flush RX Channel %d.\n", rxqid));
 sc->rx_ring_data.last_tail = pidx;
 CSR_WRITE_REG(sc, MGB_DMA_RX_TAIL(rxqid), sc->rx_ring_data.last_tail);
 return;
}
