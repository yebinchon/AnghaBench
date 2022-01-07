
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_softc {int xbd_io_dmat; } ;
struct xbd_command {int cm_datalen; int cm_data; int cm_map; int * cm_bp; } ;


 int EINPROGRESS ;
 int XBDCF_ASYNC_MAPPING ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,struct xbd_command*,int ) ;
 int bus_dmamap_load_bio (int ,int ,int *,int ,struct xbd_command*,int ) ;
 int xbd_cm_freeze (struct xbd_softc*,struct xbd_command*,int ) ;
 int xbd_queue_cb ;

__attribute__((used)) static int
xbd_queue_request(struct xbd_softc *sc, struct xbd_command *cm)
{
 int error;

 if (cm->cm_bp != ((void*)0))
  error = bus_dmamap_load_bio(sc->xbd_io_dmat, cm->cm_map,
      cm->cm_bp, xbd_queue_cb, cm, 0);
 else
  error = bus_dmamap_load(sc->xbd_io_dmat, cm->cm_map,
      cm->cm_data, cm->cm_datalen, xbd_queue_cb, cm, 0);
 if (error == EINPROGRESS) {






  xbd_cm_freeze(sc, cm, XBDCF_ASYNC_MAPPING);
  return (0);
 }

 return (error);
}
