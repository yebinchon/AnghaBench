
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx_softc {int mlx_buffer_dmat; scalar_t__ mlx_sgbusaddr; struct mlx_sgentry* mlx_sgtable; TYPE_1__* mlx_enq2; } ;
struct mlx_sgentry {int sg_count; int sg_addr; } ;
struct mlx_command {int mc_slot; int mc_nsgent; int mc_flags; int mc_dmamap; int mc_dataphys; scalar_t__ mc_sgphys; struct mlx_softc* mc_sc; } ;
struct TYPE_5__ {int ds_len; int ds_addr; } ;
typedef TYPE_2__ bus_dma_segment_t ;
struct TYPE_4__ {int me_max_sg; } ;


 int BUS_DMASYNC_PREREAD ;
 int BUS_DMASYNC_PREWRITE ;
 int MLX_CMD_DATAIN ;
 int MLX_CMD_DATAOUT ;
 int MLX_NSEG ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int debug_called (int) ;
 int panic (char*,int,int) ;

__attribute__((used)) static void
mlx_setup_dmamap(struct mlx_command *mc, bus_dma_segment_t *segs, int nsegments,
   int error)
{
    struct mlx_softc *sc = mc->mc_sc;
    struct mlx_sgentry *sg;
    int i;

    debug_called(1);


    if (sc->mlx_enq2 && (nsegments > sc->mlx_enq2->me_max_sg))
 panic("MLX: too many s/g segments (%d, max %d)", nsegments,
       sc->mlx_enq2->me_max_sg);


    sg = sc->mlx_sgtable + (mc->mc_slot * MLX_NSEG);


    mc->mc_nsgent = nsegments;
    mc->mc_sgphys = sc->mlx_sgbusaddr +
     (mc->mc_slot * MLX_NSEG * sizeof(struct mlx_sgentry));
    mc->mc_dataphys = segs[0].ds_addr;


    for (i = 0; i < nsegments; i++, sg++) {
 sg->sg_addr = segs[i].ds_addr;
 sg->sg_count = segs[i].ds_len;
    }


    if (mc->mc_flags & MLX_CMD_DATAIN)
 bus_dmamap_sync(sc->mlx_buffer_dmat, mc->mc_dmamap,
   BUS_DMASYNC_PREREAD);
    if (mc->mc_flags & MLX_CMD_DATAOUT)
 bus_dmamap_sync(sc->mlx_buffer_dmat, mc->mc_dmamap,
   BUS_DMASYNC_PREWRITE);
}
