
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mly_softc {int mly_packetphys; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int debug_called (int) ;

__attribute__((used)) static void
mly_alloc_commands_map(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
    struct mly_softc *sc = (struct mly_softc *)arg;

    debug_called(1);

    sc->mly_packetphys = segs[0].ds_addr;
}
