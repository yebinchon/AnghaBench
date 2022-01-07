
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mlx_usercommand {int mu_bufptr; int mu_datasize; int mu_buf; int mu_status; int mu_command; } ;
struct mlx_softc {int mlx_buffer_dmat; } ;
struct mlx_command {int mc_status; int mc_length; void* mc_data; int mc_dmamap; struct mlx_usercommand* mc_private; int mc_mailbox; } ;


 int BUS_DMA_NOWAIT ;
 int EINVAL ;
 int ENOMEM ;
 int MLX_IO_LOCK (struct mlx_softc*) ;
 int MLX_IO_UNLOCK (struct mlx_softc*) ;
 int MLX_MAXPHYS ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int bcopy (int ,int ,int) ;
 int bus_dmamap_load (int ,int ,void*,int ,int ,struct mlx_command*,int ) ;
 int copyin (int ,void*,int ) ;
 int copyout (void*,int ,int ) ;
 int debug (int ,char*) ;
 int debug_called (int ) ;
 int free (void*,int ) ;
 void* malloc (int ,int ,int ) ;
 struct mlx_command* mlx_alloccmd (struct mlx_softc*) ;
 scalar_t__ mlx_getslot (struct mlx_command*) ;
 int mlx_releasecmd (struct mlx_command*) ;
 int mlx_user_cb ;

__attribute__((used)) static int
mlx_user_command(struct mlx_softc *sc, struct mlx_usercommand *mu)
{
    struct mlx_command *mc;
    void *kbuf;
    int error;

    debug_called(0);

    kbuf = ((void*)0);
    mc = ((void*)0);
    error = ENOMEM;


    MLX_IO_LOCK(sc);
    if ((mc = mlx_alloccmd(sc)) == ((void*)0)) {
 MLX_IO_UNLOCK(sc);
 return(error);
    }
    bcopy(mu->mu_command, mc->mc_mailbox, sizeof(mc->mc_mailbox));
    debug(0, "got command buffer");





    if (mu->mu_datasize > 0) {
 if (mu->mu_datasize > MLX_MAXPHYS) {
     error = EINVAL;
     goto out;
 }
 MLX_IO_UNLOCK(sc);
 if (((kbuf = malloc(mu->mu_datasize, M_DEVBUF, M_WAITOK)) == ((void*)0)) ||
     (error = copyin(mu->mu_buf, kbuf, mu->mu_datasize))) {
     MLX_IO_LOCK(sc);
     goto out;
 }
 MLX_IO_LOCK(sc);
 debug(0, "got kernel buffer");
    }


    if (mlx_getslot(mc))
 goto out;
    debug(0, "got a slot");

    if (mu->mu_datasize > 0) {


 if ((mu->mu_bufptr < 0) || (mu->mu_bufptr > (sizeof(mu->mu_command) -
           sizeof(u_int32_t)))) {
     error = EINVAL;
     goto out;
 }
    }


    mc->mc_data = kbuf;
    mc->mc_length = mu->mu_datasize;
    mc->mc_private = mu;
    error = bus_dmamap_load(sc->mlx_buffer_dmat, mc->mc_dmamap, mc->mc_data,
       mc->mc_length, mlx_user_cb, mc, BUS_DMA_NOWAIT);
    if (error)
 goto out;


    mu->mu_status = mc->mc_status;
    if (mu->mu_datasize > 0) {
 MLX_IO_UNLOCK(sc);
 error = copyout(kbuf, mu->mu_buf, mu->mu_datasize);
 MLX_IO_LOCK(sc);
    }

 out:
    mlx_releasecmd(mc);
    MLX_IO_UNLOCK(sc);
    if (kbuf != ((void*)0))
 free(kbuf, M_DEVBUF);
    return(error);
}
