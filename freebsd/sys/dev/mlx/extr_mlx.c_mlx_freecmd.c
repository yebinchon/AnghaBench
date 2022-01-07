
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int mlx_buffer_dmat; } ;
struct mlx_command {int mc_dmamap; struct mlx_softc* mc_sc; } ;


 int M_DEVBUF ;
 int bus_dmamap_destroy (int ,int ) ;
 int debug_called (int) ;
 int free (struct mlx_command*,int ) ;

__attribute__((used)) static void
mlx_freecmd(struct mlx_command *mc)
{
    struct mlx_softc *sc = mc->mc_sc;

    debug_called(1);
    bus_dmamap_destroy(sc->mlx_buffer_dmat, mc->mc_dmamap);
    free(mc, M_DEVBUF);
}
