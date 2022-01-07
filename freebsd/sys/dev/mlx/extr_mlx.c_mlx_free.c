
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int mlx_io_lock; int mlx_config_lock; int * mlx_enq2; int * mlx_mem; int mlx_mem_rid; int mlx_mem_type; int mlx_dev; scalar_t__ mlx_parent_dmat; int * mlx_irq; scalar_t__ mlx_sg_dmat; int mlx_sg_dmamap; scalar_t__ mlx_sgtable; scalar_t__ mlx_sgbusaddr; scalar_t__ mlx_buffer_dmat; int mlx_timeout; int mlx_freecmds; scalar_t__ mlx_intr; int * mlx_dev_t; } ;
struct mlx_command {int dummy; } ;


 int MLX_IO_LOCK (struct mlx_softc*) ;
 int MLX_IO_UNLOCK (struct mlx_softc*) ;
 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 struct mlx_command* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct mlx_command*,int ) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_free (scalar_t__,scalar_t__,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int callout_drain (int *) ;
 int callout_stop (int *) ;
 int debug_called (int) ;
 int destroy_dev (int *) ;
 int free (int *,int ) ;
 int mc_link ;
 int mlx_freecmd (struct mlx_command*) ;
 int mtx_destroy (int *) ;
 int sx_destroy (int *) ;

void
mlx_free(struct mlx_softc *sc)
{
    struct mlx_command *mc;

    debug_called(1);


    if (sc->mlx_dev_t != ((void*)0))
 destroy_dev(sc->mlx_dev_t);

    if (sc->mlx_intr)
 bus_teardown_intr(sc->mlx_dev, sc->mlx_irq, sc->mlx_intr);


    MLX_IO_LOCK(sc);
    callout_stop(&sc->mlx_timeout);


    while ((mc = TAILQ_FIRST(&sc->mlx_freecmds)) != ((void*)0)) {
 TAILQ_REMOVE(&sc->mlx_freecmds, mc, mc_link);
 mlx_freecmd(mc);
    }
    MLX_IO_UNLOCK(sc);
    callout_drain(&sc->mlx_timeout);


    if (sc->mlx_buffer_dmat)
 bus_dma_tag_destroy(sc->mlx_buffer_dmat);


    if (sc->mlx_sgbusaddr)
 bus_dmamap_unload(sc->mlx_sg_dmat, sc->mlx_sg_dmamap);
    if (sc->mlx_sgtable)
 bus_dmamem_free(sc->mlx_sg_dmat, sc->mlx_sgtable, sc->mlx_sg_dmamap);
    if (sc->mlx_sg_dmat)
 bus_dma_tag_destroy(sc->mlx_sg_dmat);


    if (sc->mlx_irq != ((void*)0))
 bus_release_resource(sc->mlx_dev, SYS_RES_IRQ, 0, sc->mlx_irq);


    if (sc->mlx_parent_dmat)
 bus_dma_tag_destroy(sc->mlx_parent_dmat);


    if (sc->mlx_mem != ((void*)0))
 bus_release_resource(sc->mlx_dev, sc->mlx_mem_type, sc->mlx_mem_rid, sc->mlx_mem);


    if (sc->mlx_enq2 != ((void*)0))
 free(sc->mlx_enq2, M_DEVBUF);

    sx_destroy(&sc->mlx_config_lock);
    mtx_destroy(&sc->mlx_io_lock);
}
