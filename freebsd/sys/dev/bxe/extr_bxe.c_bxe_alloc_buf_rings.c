
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int num_queues; struct bxe_fastpath* fp; } ;
struct bxe_fastpath {int * tx_br; int tx_mtx; } ;


 int BXE_BR_SIZE ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int * buf_ring_alloc (int ,int ,int ,int *) ;

__attribute__((used)) static int
bxe_alloc_buf_rings(struct bxe_softc *sc)
{
    return (0);
}
