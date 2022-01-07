
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int mlx_buffer_dmat; } ;
struct mlx_command {int mc_flags; size_t mc_length; int mc_command; void (* mc_complete ) (struct mlx_command*) ;void* mc_data; int mc_dmamap; struct mlx_command* mc_private; } ;


 int BUS_DMA_NOWAIT ;
 int MLX_CMD_DATAOUT ;
 int MLX_CMD_PRIORITY ;
 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int bus_dmamap_load (int ,int ,void*,size_t,int ,struct mlx_command*,int ) ;
 int debug_called (int) ;
 int free (void*,int ) ;
 void* malloc (size_t,int ,int ) ;
 struct mlx_command* mlx_alloccmd (struct mlx_softc*) ;
 int mlx_enquire_cb ;
 scalar_t__ mlx_getslot (struct mlx_command*) ;
 int mlx_releasecmd (struct mlx_command*) ;

__attribute__((used)) static void *
mlx_enquire(struct mlx_softc *sc, int command, size_t bufsize, void (* complete)(struct mlx_command *mc))
{
    struct mlx_command *mc;
    void *result;
    int error;

    debug_called(1);
    MLX_IO_ASSERT_LOCKED(sc);


    error = 1;
    result = ((void*)0);
    if ((mc = mlx_alloccmd(sc)) == ((void*)0))
 goto out;

    if ((result = malloc(bufsize, M_DEVBUF, M_NOWAIT)) == ((void*)0))
 goto out;

    mc->mc_flags |= MLX_CMD_PRIORITY | MLX_CMD_DATAOUT;
    if (mlx_getslot(mc))
 goto out;


    mc->mc_data = result;
    mc->mc_length = bufsize;
    mc->mc_command = command;

    if (complete != ((void*)0)) {
 mc->mc_complete = complete;
 mc->mc_private = mc;
    }

    error = bus_dmamap_load(sc->mlx_buffer_dmat, mc->mc_dmamap, mc->mc_data,
       mc->mc_length, mlx_enquire_cb, mc, BUS_DMA_NOWAIT);

 out:

    if ((mc != ((void*)0)) && (mc->mc_complete == ((void*)0)))
 mlx_releasecmd(mc);

    if ((error != 0) && (result != ((void*)0))) {
 free(result, M_DEVBUF);
 result = ((void*)0);
    }
    return(result);
}
