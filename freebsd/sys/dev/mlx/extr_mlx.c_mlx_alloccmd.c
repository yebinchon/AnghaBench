
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int mlx_buffer_dmat; int mlx_freecmds; } ;
struct mlx_command {int mc_dmamap; struct mlx_softc* mc_sc; } ;


 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct mlx_command* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct mlx_command*,int ) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int debug_called (int) ;
 int free (struct mlx_command*,int ) ;
 scalar_t__ malloc (int,int ,int) ;
 int mc_link ;

__attribute__((used)) static struct mlx_command *
mlx_alloccmd(struct mlx_softc *sc)
{
    struct mlx_command *mc;
    int error;

    debug_called(1);

    MLX_IO_ASSERT_LOCKED(sc);
    if ((mc = TAILQ_FIRST(&sc->mlx_freecmds)) != ((void*)0))
 TAILQ_REMOVE(&sc->mlx_freecmds, mc, mc_link);


    if (mc == ((void*)0)) {
 mc = (struct mlx_command *)malloc(sizeof(*mc), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (mc != ((void*)0)) {
     mc->mc_sc = sc;
     error = bus_dmamap_create(sc->mlx_buffer_dmat, 0, &mc->mc_dmamap);
     if (error) {
  free(mc, M_DEVBUF);
  return(((void*)0));
     }
 }
    }
    return(mc);
}
