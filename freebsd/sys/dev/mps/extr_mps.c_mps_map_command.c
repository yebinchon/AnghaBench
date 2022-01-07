
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_softc {int buffer_dmat; } ;
struct mps_command {int cm_flags; scalar_t__ cm_length; int * cm_sge; int * cm_data; int cm_dmamap; int cm_uio; } ;


 int MPS_CM_FLAGS_USE_CCB ;
 int MPS_CM_FLAGS_USE_UIO ;
 int bus_dmamap_load (int ,int ,int *,scalar_t__,int ,struct mps_command*,int ) ;
 int bus_dmamap_load_ccb (int ,int ,int *,int ,struct mps_command*,int ) ;
 int bus_dmamap_load_uio (int ,int ,int *,int ,struct mps_command*,int ) ;
 int mps_add_dmaseg (struct mps_command*,int ,int ,int ,int) ;
 int mps_data_cb ;
 int mps_data_cb2 ;
 int mps_enqueue_request (struct mps_softc*,struct mps_command*) ;

int
mps_map_command(struct mps_softc *sc, struct mps_command *cm)
{
 int error = 0;

 if (cm->cm_flags & MPS_CM_FLAGS_USE_UIO) {
  error = bus_dmamap_load_uio(sc->buffer_dmat, cm->cm_dmamap,
      &cm->cm_uio, mps_data_cb2, cm, 0);
 } else if (cm->cm_flags & MPS_CM_FLAGS_USE_CCB) {
  error = bus_dmamap_load_ccb(sc->buffer_dmat, cm->cm_dmamap,
      cm->cm_data, mps_data_cb, cm, 0);
 } else if ((cm->cm_data != ((void*)0)) && (cm->cm_length != 0)) {
  error = bus_dmamap_load(sc->buffer_dmat, cm->cm_dmamap,
      cm->cm_data, cm->cm_length, mps_data_cb, cm, 0);
 } else {

  if (cm->cm_sge != ((void*)0))
   mps_add_dmaseg(cm, 0, 0, 0, 1);
  mps_enqueue_request(sc, cm);
 }

 return (error);
}
