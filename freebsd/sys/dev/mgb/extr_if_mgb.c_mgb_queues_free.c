
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_softc {int tx_ring_data; int rx_ring_data; } ;
struct mgb_ring_data {int dummy; } ;
typedef int if_ctx_t ;


 struct mgb_softc* iflib_get_softc (int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
mgb_queues_free(if_ctx_t ctx)
{
 struct mgb_softc *sc;

 sc = iflib_get_softc(ctx);

 memset(&sc->rx_ring_data, 0, sizeof(struct mgb_ring_data));
 memset(&sc->tx_ring_data, 0, sizeof(struct mgb_ring_data));
}
