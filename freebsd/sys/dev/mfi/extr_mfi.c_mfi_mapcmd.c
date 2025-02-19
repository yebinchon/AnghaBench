
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mfi_softc {int mfi_flags; int mfi_buffer_dmat; int mfi_io_lock; } ;
struct mfi_command {int cm_flags; int cm_len; int * cm_data; int cm_dmamap; int cm_private; TYPE_2__* cm_frame; } ;
struct TYPE_3__ {scalar_t__ cmd; } ;
struct TYPE_4__ {TYPE_1__ header; } ;


 int BUS_DMA_NOWAIT ;
 int EINPROGRESS ;
 int MA_OWNED ;
 int MFI_CMD_BIO ;
 int MFI_CMD_CCB ;
 int MFI_CMD_POLLED ;
 scalar_t__ MFI_CMD_STP ;
 int MFI_FLAGS_QFRZN ;
 int bus_dmamap_load (int ,int ,int *,int ,int ,struct mfi_command*,int) ;
 int bus_dmamap_load_bio (int ,int ,int ,int ,struct mfi_command*,int) ;
 int bus_dmamap_load_ccb (int ,int ,int *,int ,struct mfi_command*,int) ;
 int mfi_data_cb ;
 int mfi_send_frame (struct mfi_softc*,struct mfi_command*) ;
 int mtx_assert (int *,int ) ;

int
mfi_mapcmd(struct mfi_softc *sc, struct mfi_command *cm)
{
 int error, polled;

 mtx_assert(&sc->mfi_io_lock, MA_OWNED);

 if ((cm->cm_data != ((void*)0)) && (cm->cm_frame->header.cmd != MFI_CMD_STP )) {
  polled = (cm->cm_flags & MFI_CMD_POLLED) ? BUS_DMA_NOWAIT : 0;
  if (cm->cm_flags & MFI_CMD_CCB)
   error = bus_dmamap_load_ccb(sc->mfi_buffer_dmat,
       cm->cm_dmamap, cm->cm_data, mfi_data_cb, cm,
       polled);
  else if (cm->cm_flags & MFI_CMD_BIO)
   error = bus_dmamap_load_bio(sc->mfi_buffer_dmat,
       cm->cm_dmamap, cm->cm_private, mfi_data_cb, cm,
       polled);
  else
   error = bus_dmamap_load(sc->mfi_buffer_dmat,
       cm->cm_dmamap, cm->cm_data, cm->cm_len,
       mfi_data_cb, cm, polled);
  if (error == EINPROGRESS) {
   sc->mfi_flags |= MFI_FLAGS_QFRZN;
   return (0);
  }
 } else {
  error = mfi_send_frame(sc, cm);
 }

 return (error);
}
