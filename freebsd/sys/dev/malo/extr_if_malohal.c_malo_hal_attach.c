
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct malo_hal {scalar_t__ mh_dmat; int mh_dmamap; int * mh_cmdbuf; int mh_cmdaddr; int mh_mtxname; int mh_mtx; int mh_iot; int mh_ioh; int mh_dev; } ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef int bus_dma_tag_t ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int MALO_CMDBUF_SIZE ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,scalar_t__*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_load (scalar_t__,int ,int *,int ,int ,int *,int) ;
 int bus_dmamem_alloc (scalar_t__,void**,int,int *) ;
 int bus_dmamem_free (scalar_t__,int *,int ) ;
 char* device_get_nameunit (int ) ;
 int device_printf (int ,char*,int) ;
 int free (struct malo_hal*,int ) ;
 struct malo_hal* malloc (int,int ,int) ;
 int malo_hal_load_cb ;
 int mtx_init (int *,int ,int *,int ) ;
 int snprintf (int ,int,char*,char*) ;

struct malo_hal *
malo_hal_attach(device_t dev, uint16_t devid,
    bus_space_handle_t ioh, bus_space_tag_t iot, bus_dma_tag_t tag)
{
 int error;
 struct malo_hal *mh;

 mh = malloc(sizeof(struct malo_hal), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (mh == ((void*)0))
  return ((void*)0);

 mh->mh_dev = dev;
 mh->mh_ioh = ioh;
 mh->mh_iot = iot;

 snprintf(mh->mh_mtxname, sizeof(mh->mh_mtxname),
     "%s_hal", device_get_nameunit(dev));
 mtx_init(&mh->mh_mtx, mh->mh_mtxname, ((void*)0), MTX_DEF);






 error = bus_dma_tag_create(tag,
         PAGE_SIZE, 0,
         BUS_SPACE_MAXADDR_32BIT,
         BUS_SPACE_MAXADDR,
         ((void*)0), ((void*)0),
         MALO_CMDBUF_SIZE,
         1,
         MALO_CMDBUF_SIZE,
         BUS_DMA_ALLOCNOW,
         ((void*)0),
         ((void*)0),
         &mh->mh_dmat);
 if (error != 0) {
  device_printf(dev, "unable to allocate memory for cmd tag, "
   "error %u\n", error);
  goto fail;
 }


 error = bus_dmamem_alloc(mh->mh_dmat, (void**) &mh->mh_cmdbuf,
     BUS_DMA_NOWAIT | BUS_DMA_COHERENT,
     &mh->mh_dmamap);
 if (error != 0) {
  device_printf(dev, "unable to allocate memory for cmd buffer, "
   "error %u\n", error);
  goto fail;
 }

 error = bus_dmamap_load(mh->mh_dmat, mh->mh_dmamap,
    mh->mh_cmdbuf, MALO_CMDBUF_SIZE,
    malo_hal_load_cb, &mh->mh_cmdaddr,
    BUS_DMA_NOWAIT);
 if (error != 0) {
  device_printf(dev, "unable to load cmd buffer, error %u\n",
   error);
  goto fail;
 }

 return (mh);

fail:
 if (mh->mh_cmdbuf != ((void*)0))
  bus_dmamem_free(mh->mh_dmat, mh->mh_cmdbuf,
      mh->mh_dmamap);
 if (mh->mh_dmat)
  bus_dma_tag_destroy(mh->mh_dmat);
 free(mh, M_DEVBUF);

 return (((void*)0));
}
