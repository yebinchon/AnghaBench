
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mfi_softc {int * mfi_map_sync_cm; scalar_t__ cm_map_abort; int mfi_io_lock; } ;
struct mfi_frame_header {scalar_t__ cmd_status; } ;
struct mfi_command {int cm_data; TYPE_1__* cm_frame; struct mfi_softc* cm_sc; } ;
struct TYPE_2__ {struct mfi_frame_header header; } ;


 int MA_OWNED ;
 scalar_t__ MFI_STAT_INVALID_STATUS ;
 int M_MFIBUF ;
 int free (int ,int ) ;
 int mfi_queue_map_sync (struct mfi_softc*) ;
 int mfi_release_command (struct mfi_command*) ;
 int mtx_assert (int *,int ) ;
 int wakeup (int **) ;

__attribute__((used)) static void
mfi_sync_map_complete(struct mfi_command *cm)
{
 struct mfi_frame_header *hdr;
 struct mfi_softc *sc;
 int aborted = 0;

 sc = cm->cm_sc;
 mtx_assert(&sc->mfi_io_lock, MA_OWNED);

 hdr = &cm->cm_frame->header;

 if (sc->mfi_map_sync_cm == ((void*)0))
  return;

 if (sc->cm_map_abort ||
     hdr->cmd_status == MFI_STAT_INVALID_STATUS) {
  sc->cm_map_abort = 0;
  aborted = 1;
 }

 free(cm->cm_data, M_MFIBUF);
 wakeup(&sc->mfi_map_sync_cm);
 sc->mfi_map_sync_cm = ((void*)0);
 mfi_release_command(cm);


 if (!aborted)
  mfi_queue_map_sync(sc);
}
