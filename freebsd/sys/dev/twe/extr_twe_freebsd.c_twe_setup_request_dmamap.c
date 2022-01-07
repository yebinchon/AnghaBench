
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct twe_softc {int twe_cmdphys; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int debug_called (int) ;

__attribute__((used)) static void
twe_setup_request_dmamap(void *arg, bus_dma_segment_t *segs, int nsegments, int error)
{
    struct twe_softc *sc = (struct twe_softc *)arg;

    debug_called(4);


    sc->twe_cmdphys = segs[0].ds_addr;
}
