
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int num_queues; int * fp; } ;


 int bxe_init_tx_ring_one (int *) ;

__attribute__((used)) static inline void
bxe_init_tx_rings(struct bxe_softc *sc)
{
    int i;

    for (i = 0; i < sc->num_queues; i++) {
        bxe_init_tx_ring_one(&sc->fp[i]);
    }
}
