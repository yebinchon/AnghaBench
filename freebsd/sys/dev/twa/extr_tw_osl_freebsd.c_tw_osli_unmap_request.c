
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twa_softc {int dma_tag; int io_lock; int ioctl_map; int ioctl_tag; } ;
struct tw_osli_req_context {int flags; int real_length; int length; int * real_data; int * data; int dma_map; struct twa_softc* ctlr; } ;
typedef int TW_VOID ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int TW_OSLI_MALLOC_CLASS ;
 int TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED ;
 int TW_OSLI_REQ_FLAGS_DATA_IN ;
 int TW_OSLI_REQ_FLAGS_DATA_OUT ;
 int TW_OSLI_REQ_FLAGS_PASSTHRU ;
 int bcopy (int *,int *,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int free (int *,int ) ;
 int mtx_lock_spin (int ) ;
 int mtx_unlock_spin (int ) ;
 int tw_osli_dbg_dprintf (int,struct twa_softc*,char*) ;

TW_VOID
tw_osli_unmap_request(struct tw_osli_req_context *req)
{
 struct twa_softc *sc = req->ctlr;

 tw_osli_dbg_dprintf(10, sc, "entered");


 if (req->data != ((void*)0)) {
  if (req->flags & TW_OSLI_REQ_FLAGS_PASSTHRU) {

   mtx_lock_spin(sc->io_lock);

   if (req->flags & TW_OSLI_REQ_FLAGS_DATA_IN) {
    bus_dmamap_sync(sc->ioctl_tag,
     sc->ioctl_map, BUS_DMASYNC_POSTREAD);





    if (req->flags & TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED)
     bcopy(req->data, req->real_data,
      req->real_length);
   }

   if (req->flags & TW_OSLI_REQ_FLAGS_DATA_OUT)
    bus_dmamap_sync(sc->ioctl_tag, sc->ioctl_map,
     BUS_DMASYNC_POSTWRITE);

   bus_dmamap_unload(sc->ioctl_tag, sc->ioctl_map);

   mtx_unlock_spin(sc->io_lock);
  } else {
   if (req->flags & TW_OSLI_REQ_FLAGS_DATA_IN) {
    bus_dmamap_sync(sc->dma_tag,
     req->dma_map, BUS_DMASYNC_POSTREAD);





    if (req->flags & TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED)
     bcopy(req->data, req->real_data,
      req->real_length);
   }
   if (req->flags & TW_OSLI_REQ_FLAGS_DATA_OUT)
    bus_dmamap_sync(sc->dma_tag, req->dma_map,
     BUS_DMASYNC_POSTWRITE);

   bus_dmamap_unload(sc->dma_tag, req->dma_map);
  }
 }


 if (req->flags & TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED) {
  free(req->data, TW_OSLI_MALLOC_CLASS);

  req->data = req->real_data;
  req->length = req->real_length;
 }
}
