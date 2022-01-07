
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int io_lock; int data_tag; } ;
struct tws_request {scalar_t__ type; int flags; int length; int * data; int dma_map; } ;
typedef scalar_t__ int32_t ;


 int BUS_DMA_NOWAIT ;
 int BUS_DMA_WAITOK ;
 scalar_t__ EINPROGRESS ;
 int TWS_DATA_CCB ;
 scalar_t__ TWS_REQ_TYPE_SCSI_IO ;
 int TWS_TRACE (struct tws_softc*,char*,int ,scalar_t__) ;
 scalar_t__ bus_dmamap_load (int ,int ,int *,int ,int ,struct tws_request*,int) ;
 scalar_t__ bus_dmamap_load_ccb (int ,int ,int *,int ,struct tws_request*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int tws_dmamap_data_load_cbfn ;
 int tws_freeze_simq (struct tws_softc*,struct tws_request*) ;
 scalar_t__ tws_submit_command (struct tws_softc*,struct tws_request*) ;

int32_t
tws_map_request(struct tws_softc *sc, struct tws_request *req)
{
    int32_t error = 0;



    if (req->data != ((void*)0)) {
        int my_flags = ((req->type == TWS_REQ_TYPE_SCSI_IO) ? BUS_DMA_WAITOK : BUS_DMA_NOWAIT);




        mtx_lock(&sc->io_lock);
 if (req->flags & TWS_DATA_CCB)
  error = bus_dmamap_load_ccb(sc->data_tag, req->dma_map,
         req->data,
         tws_dmamap_data_load_cbfn, req,
         my_flags);
 else
  error = bus_dmamap_load(sc->data_tag, req->dma_map,
     req->data, req->length,
     tws_dmamap_data_load_cbfn, req,
     my_flags);
        mtx_unlock(&sc->io_lock);

        if (error == EINPROGRESS) {
            TWS_TRACE(sc, "in progress", 0, error);
            tws_freeze_simq(sc, req);
            error = 0;
        }
    } else {
        error = tws_submit_command(sc, req);
    }
    return(error);
}
