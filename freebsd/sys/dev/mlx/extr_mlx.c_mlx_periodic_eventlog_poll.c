
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int mlx_buffer_dmat; } ;
struct mlx_command {int mc_length; int * mc_data; int mc_dmamap; } ;


 int BUS_DMA_NOWAIT ;
 int MLX_IO_ASSERT_LOCKED (struct mlx_softc*) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int bus_dmamap_load (int ,int ,int *,int,int ,struct mlx_command*,int ) ;
 int debug_called (int) ;
 int free (void*,int ) ;
 void* malloc (int,int ,int ) ;
 struct mlx_command* mlx_alloccmd (struct mlx_softc*) ;
 int mlx_eventlog_cb ;
 scalar_t__ mlx_getslot (struct mlx_command*) ;
 int mlx_releasecmd (struct mlx_command*) ;

__attribute__((used)) static void
mlx_periodic_eventlog_poll(struct mlx_softc *sc)
{
    struct mlx_command *mc;
    void *result = ((void*)0);
    int error = 0;

    debug_called(1);
    MLX_IO_ASSERT_LOCKED(sc);


    error = 1;
    if ((mc = mlx_alloccmd(sc)) == ((void*)0))
 goto out;


    if ((result = malloc( 1024, M_DEVBUF,
    M_NOWAIT)) == ((void*)0))
 goto out;


    if (mlx_getslot(mc))
 goto out;


    mc->mc_data = result;
    mc->mc_length = 1024;
    error = bus_dmamap_load(sc->mlx_buffer_dmat, mc->mc_dmamap, mc->mc_data,
       mc->mc_length, mlx_eventlog_cb, mc, BUS_DMA_NOWAIT);

 out:
    if (error != 0) {
 if (mc != ((void*)0))
     mlx_releasecmd(mc);
 if ((result != ((void*)0)) && (mc->mc_data != ((void*)0)))
     free(result, M_DEVBUF);
    }
}
