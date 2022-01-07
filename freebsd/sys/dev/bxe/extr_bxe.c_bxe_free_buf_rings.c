
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int num_queues; struct bxe_fastpath* fp; } ;
struct bxe_fastpath {int * tx_br; } ;


 int M_DEVBUF ;
 int buf_ring_free (int *,int ) ;

__attribute__((used)) static void
bxe_free_buf_rings(struct bxe_softc *sc)
{
}
