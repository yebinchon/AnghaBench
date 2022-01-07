
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int mlx_state; int mlx_dev; } ;
struct mlx_command {scalar_t__ mc_status; int * mc_complete; int mc_dataphys; int mc_command; struct mlx_softc* mc_sc; } ;
typedef int bus_dma_segment_t ;


 int MLX_STATE_INTEN ;
 int device_printf (int ,char*,int ) ;
 int mlx_diagnose_command (struct mlx_command*) ;
 int mlx_make_type2 (struct mlx_command*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ mlx_poll_command (struct mlx_command*) ;
 int mlx_setup_dmamap (struct mlx_command*,int *,int,int) ;
 int mlx_start (struct mlx_command*) ;
 scalar_t__ mlx_wait_command (struct mlx_command*) ;

__attribute__((used)) static void
mlx_enquire_cb(void *arg, bus_dma_segment_t *segs, int nsegments, int error)
{
    struct mlx_softc *sc;
    struct mlx_command *mc;

    mc = (struct mlx_command *)arg;
    if (error)
 return;

    mlx_setup_dmamap(mc, segs, nsegments, error);


    sc = mc->mc_sc;
    mlx_make_type2(mc, mc->mc_command, 0, 0, 0, 0, 0, 0, mc->mc_dataphys, 0);


    if (mc->mc_complete != ((void*)0)) {
 if ((error = mlx_start(mc)) != 0)
     return;
    } else {

 if ((sc->mlx_state & MLX_STATE_INTEN) ? mlx_wait_command(mc) :
      mlx_poll_command(mc))
     return;


 if (mc->mc_status != 0) {
     device_printf(sc->mlx_dev, "ENQUIRY failed - %s\n",
     mlx_diagnose_command(mc));
     return;
 }
    }
}
