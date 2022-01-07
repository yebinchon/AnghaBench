
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mlx_softc {int mlx_sgbusaddr; } ;
struct TYPE_3__ {int ds_addr; } ;
typedef TYPE_1__ bus_dma_segment_t ;


 int debug_called (int) ;

__attribute__((used)) static void
mlx_dma_map_sg(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
    struct mlx_softc *sc = (struct mlx_softc *)arg;

    debug_called(1);


    sc->mlx_sgbusaddr = segs->ds_addr;
}
