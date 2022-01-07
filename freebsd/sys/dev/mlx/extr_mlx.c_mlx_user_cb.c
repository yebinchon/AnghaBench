
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_usercommand {int mu_bufptr; scalar_t__ mu_datasize; } ;
struct mlx_dcdb {int dcdb_physaddr; } ;
struct mlx_command {int* mc_mailbox; int mc_dataphys; scalar_t__ mc_data; scalar_t__ mc_private; } ;
typedef int bus_dma_segment_t ;


 int MLX_CMD_DIRECT_CDB ;
 int debug (int ,char*) ;
 int mlx_setup_dmamap (struct mlx_command*,int *,int,int) ;
 scalar_t__ mlx_wait_command (struct mlx_command*) ;

void
mlx_user_cb(void *arg, bus_dma_segment_t *segs, int nsegments, int error)
{
    struct mlx_usercommand *mu;
    struct mlx_command *mc;
    struct mlx_dcdb *dcdb;

    mc = (struct mlx_command *)arg;
    if (error)
 return;

    mlx_setup_dmamap(mc, segs, nsegments, error);

    mu = (struct mlx_usercommand *)mc->mc_private;
    dcdb = ((void*)0);







    if (mc->mc_mailbox[0] == MLX_CMD_DIRECT_CDB) {
 dcdb = (struct mlx_dcdb *)mc->mc_data;
 dcdb->dcdb_physaddr = mc->mc_dataphys + sizeof(*dcdb);
 mu->mu_bufptr = 8;
    }




    if (mu->mu_datasize > 0) {
 mc->mc_mailbox[mu->mu_bufptr ] = mc->mc_dataphys & 0xff;
 mc->mc_mailbox[mu->mu_bufptr + 1] = (mc->mc_dataphys >> 8) & 0xff;
 mc->mc_mailbox[mu->mu_bufptr + 2] = (mc->mc_dataphys >> 16) & 0xff;
 mc->mc_mailbox[mu->mu_bufptr + 3] = (mc->mc_dataphys >> 24) & 0xff;
    }
    debug(0, "command fixup");


    if (mlx_wait_command(mc) != 0)
 return;

}
