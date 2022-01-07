
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct mwl_hal_vap {int macid; void* bss_type; void* vap_type; } ;
struct mwl_hal {int mh_iot; int mh_ioh; } ;
struct TYPE_6__ {int mh_devid; } ;
struct mwl_hal_priv {int mh_SDRAMSIZE_Addr; int mh_mtx; int mh_dmat; int mh_dmamap; int mh_cmdbuf; struct mwl_hal public; int mh_cmdaddr; int mh_mtxname; TYPE_3__ mh_revs; struct mwl_hal_vap* mh_vaps; TYPE_2__* mh_streams; int mh_dev; } ;
typedef int device_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;
typedef int bus_dma_tag_t ;
struct TYPE_4__ {size_t txq; } ;
struct TYPE_5__ {int stream; TYPE_1__ public; } ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int MTX_DEF ;
 size_t MWL_BAQID_MAX ;
 int MWL_BASTREAMS_MAX ;
 int MWL_CMDBUF_SIZE ;
 void* MWL_HAL_AP ;
 void* MWL_HAL_STA ;
 int MWL_MBSS_AP_MAX ;
 int MWL_MBSS_MAX ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int WL_MAC_TYPE_PRIMARY_AP ;
 int WL_MAC_TYPE_PRIMARY_CLIENT ;
 int WL_MAC_TYPE_SECONDARY_AP ;
 int WL_MAC_TYPE_SECONDARY_CLIENT ;
 size_t* ba2qid ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,int *,int) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,int ,int ) ;
 char* device_get_nameunit (int ) ;
 int device_printf (int ,char*,int,...) ;
 int free (struct mwl_hal_priv*,int ) ;
 void* htole16 (int ) ;
 struct mwl_hal_priv* malloc (int,int ,int) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,int *,int ) ;
 int mwl_hal_load_cb ;
 int* qid2ba ;
 int snprintf (int ,int,char*,char*) ;

struct mwl_hal *
mwl_hal_attach(device_t dev, uint16_t devid,
    bus_space_handle_t ioh, bus_space_tag_t iot, bus_dma_tag_t tag)
{
 struct mwl_hal_priv *mh;
 struct mwl_hal_vap *hvap;
 int error, i;

 mh = malloc(sizeof(struct mwl_hal_priv), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (mh == ((void*)0))
  return ((void*)0);
 mh->mh_dev = dev;
 mh->public.mh_ioh = ioh;
 mh->public.mh_iot = iot;
 for (i = 0; i < MWL_BASTREAMS_MAX; i++) {
  mh->mh_streams[i].public.txq = ba2qid[i];
  mh->mh_streams[i].stream = i;

  if (mh->mh_streams[i].public.txq < MWL_BAQID_MAX)
   qid2ba[mh->mh_streams[i].public.txq] = i;
  else
   device_printf(dev, "unexpected BA tx qid %d for "
       "stream %d\n", mh->mh_streams[i].public.txq, i);
 }


 i = 0;
 hvap = &mh->mh_vaps[i];
 hvap->vap_type = MWL_HAL_AP;
 hvap->bss_type = htole16(WL_MAC_TYPE_PRIMARY_AP);
 hvap->macid = 0;
 for (i++; i < MWL_MBSS_AP_MAX; i++) {
  hvap = &mh->mh_vaps[i];
  hvap->vap_type = MWL_HAL_AP;
  hvap->bss_type = htole16(WL_MAC_TYPE_SECONDARY_AP);
  hvap->macid = i;
 }
 hvap = &mh->mh_vaps[i];
 hvap->vap_type = MWL_HAL_STA;
 hvap->bss_type = htole16(WL_MAC_TYPE_PRIMARY_CLIENT);
 hvap->macid = i;
 for (i++; i < MWL_MBSS_MAX; i++) {
  hvap = &mh->mh_vaps[i];
  hvap->vap_type = MWL_HAL_STA;
  hvap->bss_type = htole16(WL_MAC_TYPE_SECONDARY_CLIENT);
  hvap->macid = i;
 }
 mh->mh_revs.mh_devid = devid;
 snprintf(mh->mh_mtxname, sizeof(mh->mh_mtxname),
     "%s_hal", device_get_nameunit(dev));
 mtx_init(&mh->mh_mtx, mh->mh_mtxname, ((void*)0), MTX_DEF);






 error = bus_dma_tag_create(tag,
         PAGE_SIZE, 0,
         BUS_SPACE_MAXADDR_32BIT,
         BUS_SPACE_MAXADDR,
         ((void*)0), ((void*)0),
         MWL_CMDBUF_SIZE,
         1,
         MWL_CMDBUF_SIZE,
         BUS_DMA_ALLOCNOW,
         ((void*)0),
         ((void*)0),
         &mh->mh_dmat);
 if (error != 0) {
  device_printf(dev, "unable to allocate memory for cmd tag, "
   "error %u\n", error);
  goto fail0;
 }


 error = bus_dmamem_alloc(mh->mh_dmat, (void**) &mh->mh_cmdbuf,
     BUS_DMA_NOWAIT | BUS_DMA_COHERENT,
     &mh->mh_dmamap);
 if (error != 0) {
  device_printf(dev, "unable to allocate memory for cmd buffer, "
   "error %u\n", error);
  goto fail1;
 }

 error = bus_dmamap_load(mh->mh_dmat, mh->mh_dmamap,
    mh->mh_cmdbuf, MWL_CMDBUF_SIZE,
    mwl_hal_load_cb, &mh->mh_cmdaddr,
    BUS_DMA_NOWAIT);
 if (error != 0) {
  device_printf(dev, "unable to load cmd buffer, error %u\n",
   error);
  goto fail2;
 }







 switch (devid) {
 case 0x2a02:
 case 0x2a03:
 case 0x2a08:
 case 0x2a0b:
 case 0x2a24:
  mh->mh_SDRAMSIZE_Addr = 0x40fe70b7;
  break;
 case 0x2a04:
  mh->mh_SDRAMSIZE_Addr = 0x40fc70b7;
  break;
 default:
  break;
 }
 return &mh->public;
fail2:
 bus_dmamem_free(mh->mh_dmat, mh->mh_cmdbuf, mh->mh_dmamap);
fail1:
 bus_dma_tag_destroy(mh->mh_dmat);
fail0:
 mtx_destroy(&mh->mh_mtx);
 free(mh, M_DEVBUF);
 return ((void*)0);
}
