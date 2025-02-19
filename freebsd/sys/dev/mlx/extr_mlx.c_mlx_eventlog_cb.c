
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx_command {int * mc_data; struct mlx_command* mc_private; int mc_complete; int mc_dataphys; TYPE_1__* mc_sc; } ;
typedef int bus_dma_segment_t ;
struct TYPE_2__ {int mlx_lastevent; } ;


 int MLX_CMD_LOGOP ;
 int MLX_LOGOP_GET ;
 int M_DEVBUF ;
 int free (int *,int ) ;
 int mlx_make_type3 (struct mlx_command*,int ,int ,int,int ,int ,int ,int ,int ) ;
 int mlx_periodic_eventlog_respond ;
 int mlx_releasecmd (struct mlx_command*) ;
 int mlx_setup_dmamap (struct mlx_command*,int *,int,int) ;
 scalar_t__ mlx_start (struct mlx_command*) ;

__attribute__((used)) static void
mlx_eventlog_cb(void *arg, bus_dma_segment_t *segs, int nsegments, int error)
{
    struct mlx_command *mc;

    mc = (struct mlx_command *)arg;
    mlx_setup_dmamap(mc, segs, nsegments, error);


    mlx_make_type3(mc, MLX_CMD_LOGOP, MLX_LOGOP_GET, 1,
     mc->mc_sc->mlx_lastevent, 0, 0, mc->mc_dataphys, 0);
    mc->mc_complete = mlx_periodic_eventlog_respond;
    mc->mc_private = mc;


    if (mlx_start(mc) != 0) {
 mlx_releasecmd(mc);
 free(mc->mc_data, M_DEVBUF);
 mc->mc_data = ((void*)0);
    }

}
