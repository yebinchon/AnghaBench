
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx_softc {int mlx_iftype; int mlx_parent_dmat; int mlx_dev; int * mlx_mem; void* mlx_mem_rid; void* mlx_mem_type; int mlx_io_lock; int mlx_timeout; int mlx_config_lock; } ;
struct mlx_ident {int iftype; } ;
typedef int device_t ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int ENOMEM ;
 int ENXIO ;
 void* MLX_CFG_BASE0 ;
 void* MLX_CFG_BASE1 ;




 int MTX_DEF ;
 int RF_ACTIVE ;
 void* SYS_RES_IOPORT ;
 void* SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,void*,void**,int ) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int callout_init_mtx (int *,int *,int ) ;
 int debug_called (int) ;
 struct mlx_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mlx_attach (struct mlx_softc*) ;
 int mlx_free (struct mlx_softc*) ;
 struct mlx_ident* mlx_pci_match (int ) ;
 int mlx_startup (struct mlx_softc*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int pci_enable_busmaster (int ) ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
mlx_pci_attach(device_t dev)
{
    struct mlx_softc *sc;
    struct mlx_ident *m;
    int error;

    debug_called(1);

    pci_enable_busmaster(dev);

    sc = device_get_softc(dev);
    sc->mlx_dev = dev;





    m = mlx_pci_match(dev);
    if (m == ((void*)0))
 return(ENXIO);
    sc->mlx_iftype = m->iftype;

    mtx_init(&sc->mlx_io_lock, "mlx I/O", ((void*)0), MTX_DEF);
    sx_init(&sc->mlx_config_lock, "mlx config");
    callout_init_mtx(&sc->mlx_timeout, &sc->mlx_io_lock, 0);






    switch(sc->mlx_iftype) {
    case 131:
    case 130:
 sc->mlx_mem_type = SYS_RES_MEMORY;
 sc->mlx_mem_rid = MLX_CFG_BASE1;
 sc->mlx_mem = bus_alloc_resource_any(dev, sc->mlx_mem_type,
  &sc->mlx_mem_rid, RF_ACTIVE);
 if (sc->mlx_mem == ((void*)0)) {
     sc->mlx_mem_type = SYS_RES_IOPORT;
     sc->mlx_mem_rid = MLX_CFG_BASE0;
     sc->mlx_mem = bus_alloc_resource_any(dev, sc->mlx_mem_type,
  &sc->mlx_mem_rid, RF_ACTIVE);
 }
 break;
    case 129:
    case 128:
 sc->mlx_mem_type = SYS_RES_MEMORY;
 sc->mlx_mem_rid = MLX_CFG_BASE0;
 sc->mlx_mem = bus_alloc_resource_any(dev, sc->mlx_mem_type,
  &sc->mlx_mem_rid, RF_ACTIVE);
 break;
    }
    if (sc->mlx_mem == ((void*)0)) {
 device_printf(sc->mlx_dev, "couldn't allocate mailbox window\n");
 mlx_free(sc);
 return(ENXIO);
    }




    error = bus_dma_tag_create(bus_get_dma_tag(dev),
          1, 0,
          BUS_SPACE_MAXADDR_32BIT,
          BUS_SPACE_MAXADDR,
          ((void*)0), ((void*)0),
          BUS_SPACE_MAXSIZE_32BIT,
          BUS_SPACE_UNRESTRICTED,
          BUS_SPACE_MAXSIZE_32BIT,
          BUS_DMA_ALLOCNOW,
          ((void*)0),
          ((void*)0),
          &sc->mlx_parent_dmat);
    if (error != 0) {
 device_printf(dev, "can't allocate parent DMA tag\n");
 mlx_free(sc);
 return(ENOMEM);
    }




    error = mlx_attach(sc);
    if (error != 0) {
 mlx_free(sc);
 return(error);
    }




    mlx_startup(sc);
    return(0);
}
