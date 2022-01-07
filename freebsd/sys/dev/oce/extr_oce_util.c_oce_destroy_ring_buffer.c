
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dma; } ;
typedef TYPE_1__ oce_ring_buffer_t ;
typedef int POCE_SOFTC ;


 int M_DEVBUF ;
 int free (TYPE_1__*,int ) ;
 int oce_dma_free (int ,int *) ;

void
oce_destroy_ring_buffer(POCE_SOFTC sc, oce_ring_buffer_t *ring)
{
 oce_dma_free(sc, &ring->dma);
 free(ring, M_DEVBUF);
}
