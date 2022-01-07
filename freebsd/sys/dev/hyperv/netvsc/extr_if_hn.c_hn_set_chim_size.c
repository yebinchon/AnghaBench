
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hn_softc {int hn_tx_ring_cnt; TYPE_1__* hn_tx_ring; } ;
struct TYPE_2__ {int hn_chim_size; } ;



__attribute__((used)) static void
hn_set_chim_size(struct hn_softc *sc, int chim_size)
{
 int i;

 for (i = 0; i < sc->hn_tx_ring_cnt; ++i)
  sc->hn_tx_ring[i].hn_chim_size = chim_size;
}
