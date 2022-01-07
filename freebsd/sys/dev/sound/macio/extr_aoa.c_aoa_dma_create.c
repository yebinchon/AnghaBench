
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aoa_softc {struct aoa_dma* sc_intrp; int sc_dev; } ;
struct aoa_dma {int mutex; int blksz; int bufsz; int tag; } ;
typedef int device_t ;
typedef int bus_dma_tag_t ;


 int AOA_BUFFER_SIZE ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 struct aoa_dma* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static struct aoa_dma *
aoa_dma_create(struct aoa_softc *sc)
{
 struct aoa_dma *dma;
 bus_dma_tag_t tag;
 int err;
 device_t self;

 self = sc->sc_dev;
 err = bus_dma_tag_create(bus_get_dma_tag(self),
     4, 0, BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     AOA_BUFFER_SIZE, 1, AOA_BUFFER_SIZE, 0, ((void*)0), ((void*)0), &tag);
 if (err != 0)
  return (((void*)0));

 dma = malloc(sizeof(*dma), M_DEVBUF, M_WAITOK | M_ZERO);
 dma->tag = tag;
 dma->bufsz = AOA_BUFFER_SIZE;
 dma->blksz = PAGE_SIZE;

 mtx_init(&dma->mutex, "AOA", ((void*)0), MTX_DEF);

 sc->sc_intrp = dma;

 return (dma);
}
