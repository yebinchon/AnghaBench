
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int mlx_buffer_dmat; } ;
struct mlx_command {int mc_flags; int mc_dmamap; int * mc_data; struct mlx_softc* mc_sc; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int MLX_CMD_DATAIN ;
 int MLX_CMD_DATAOUT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int debug_called (int) ;

__attribute__((used)) static void
mlx_unmapcmd(struct mlx_command *mc)
{
    struct mlx_softc *sc = mc->mc_sc;

    debug_called(1);


    if (mc->mc_data != ((void*)0)) {

 if (mc->mc_flags & MLX_CMD_DATAIN)
     bus_dmamap_sync(sc->mlx_buffer_dmat, mc->mc_dmamap, BUS_DMASYNC_POSTREAD);
 if (mc->mc_flags & MLX_CMD_DATAOUT)
     bus_dmamap_sync(sc->mlx_buffer_dmat, mc->mc_dmamap, BUS_DMASYNC_POSTWRITE);

 bus_dmamap_unload(sc->mlx_buffer_dmat, mc->mc_dmamap);
    }
}
