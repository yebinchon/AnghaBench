
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int io_lock; int data_tag; } ;
struct tws_request {int flags; int dma_map; int * data; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int TWS_DIR_IN ;
 int TWS_DIR_OUT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
tws_unmap_request(struct tws_softc *sc, struct tws_request *req)
{
    if (req->data != ((void*)0)) {
        if ( req->flags & TWS_DIR_IN )
            bus_dmamap_sync(sc->data_tag, req->dma_map,
                                            BUS_DMASYNC_POSTREAD);
        if ( req->flags & TWS_DIR_OUT )
            bus_dmamap_sync(sc->data_tag, req->dma_map,
                                            BUS_DMASYNC_POSTWRITE);
        mtx_lock(&sc->io_lock);
        bus_dmamap_unload(sc->data_tag, req->dma_map);
        mtx_unlock(&sc->io_lock);
    }
}
