
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpr_softc {int buffer_dmat; } ;
struct mpr_command {int cm_flags; scalar_t__ cm_length; int * cm_sge; int * cm_data; int cm_dmamap; int cm_uio; } ;


 int MPR_CM_FLAGS_USE_CCB ;
 int MPR_CM_FLAGS_USE_UIO ;
 int bus_dmamap_load (int ,int ,int *,scalar_t__,int ,struct mpr_command*,int ) ;
 int bus_dmamap_load_ccb (int ,int ,int *,int ,struct mpr_command*,int ) ;
 int bus_dmamap_load_uio (int ,int ,int *,int ,struct mpr_command*,int ) ;
 int mpr_add_dmaseg (struct mpr_command*,int ,int ,int ,int) ;
 int mpr_data_cb ;
 int mpr_data_cb2 ;
 int mpr_enqueue_request (struct mpr_softc*,struct mpr_command*) ;

int
mpr_map_command(struct mpr_softc *sc, struct mpr_command *cm)
{
 int error = 0;

 if (cm->cm_flags & MPR_CM_FLAGS_USE_UIO) {
  error = bus_dmamap_load_uio(sc->buffer_dmat, cm->cm_dmamap,
      &cm->cm_uio, mpr_data_cb2, cm, 0);
 } else if (cm->cm_flags & MPR_CM_FLAGS_USE_CCB) {
  error = bus_dmamap_load_ccb(sc->buffer_dmat, cm->cm_dmamap,
      cm->cm_data, mpr_data_cb, cm, 0);
 } else if ((cm->cm_data != ((void*)0)) && (cm->cm_length != 0)) {
  error = bus_dmamap_load(sc->buffer_dmat, cm->cm_dmamap,
      cm->cm_data, cm->cm_length, mpr_data_cb, cm, 0);
 } else {

  if (cm->cm_sge != ((void*)0))
   mpr_add_dmaseg(cm, 0, 0, 0, 1);
  mpr_enqueue_request(sc, cm);
 }

 return (error);
}
