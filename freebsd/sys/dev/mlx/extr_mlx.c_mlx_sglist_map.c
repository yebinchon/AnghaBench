
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx_softc {int * mlx_sgtable; int mlx_sg_dmamap; int * mlx_sg_dmat; int mlx_dev; int mlx_parent_dmat; TYPE_1__* mlx_enq2; scalar_t__ mlx_sgbusaddr; } ;
struct mlx_sgentry {int dummy; } ;
struct TYPE_2__ {int me_max_commands; } ;


 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int ENOMEM ;
 int MLX_NSEG ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,size_t,int,int ,int ,int *,int *,int **) ;
 int bus_dma_tag_destroy (int *) ;
 int bus_dmamap_load (int *,int ,int *,size_t,int ,struct mlx_softc*,int ) ;
 int bus_dmamap_unload (int *,int ) ;
 int bus_dmamem_alloc (int *,void**,int ,int *) ;
 int bus_dmamem_free (int *,int *,int ) ;
 int debug_called (int) ;
 int device_printf (int ,char*) ;
 int mlx_dma_map_sg ;

__attribute__((used)) static int
mlx_sglist_map(struct mlx_softc *sc)
{
    size_t segsize;
    int error, ncmd;

    debug_called(1);


    if (sc->mlx_sgbusaddr)
 bus_dmamap_unload(sc->mlx_sg_dmat, sc->mlx_sg_dmamap);
    if (sc->mlx_sgtable)
 bus_dmamem_free(sc->mlx_sg_dmat, sc->mlx_sgtable, sc->mlx_sg_dmamap);
    if (sc->mlx_sg_dmat)
 bus_dma_tag_destroy(sc->mlx_sg_dmat);
    sc->mlx_sgbusaddr = 0;
    sc->mlx_sgtable = ((void*)0);
    sc->mlx_sg_dmat = ((void*)0);







    if (sc->mlx_enq2 == ((void*)0)) {
 ncmd = 2;
    } else {
 ncmd = sc->mlx_enq2->me_max_commands;
    }
    segsize = sizeof(struct mlx_sgentry) * MLX_NSEG * ncmd;
    error = bus_dma_tag_create(sc->mlx_parent_dmat,
          1, 0,
          BUS_SPACE_MAXADDR,
          BUS_SPACE_MAXADDR,
          ((void*)0), ((void*)0),
          segsize, 1,
          BUS_SPACE_MAXSIZE_32BIT,
          0,
          ((void*)0), ((void*)0),
          &sc->mlx_sg_dmat);
    if (error != 0) {
 device_printf(sc->mlx_dev, "can't allocate scatter/gather DMA tag\n");
 return(ENOMEM);
    }
    error = bus_dmamem_alloc(sc->mlx_sg_dmat, (void **)&sc->mlx_sgtable,
        BUS_DMA_NOWAIT, &sc->mlx_sg_dmamap);
    if (error) {
 device_printf(sc->mlx_dev, "can't allocate s/g table\n");
 return(ENOMEM);
    }
    (void)bus_dmamap_load(sc->mlx_sg_dmat, sc->mlx_sg_dmamap, sc->mlx_sgtable,
     segsize, mlx_dma_map_sg, sc, 0);
    return(0);
}
