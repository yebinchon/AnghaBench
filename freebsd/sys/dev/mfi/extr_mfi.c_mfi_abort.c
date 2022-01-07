
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union mfi_frame {int dummy; } mfi_frame ;
typedef int uint64_t ;
typedef void* uint32_t ;
struct mfi_softc {int mfi_io_lock; int mfi_dev; } ;
struct mfi_command {int (* cm_complete ) (struct mfi_command*) ;int cm_flags; int * cm_data; scalar_t__ cm_frame_busaddr; TYPE_3__* cm_frame; } ;
struct TYPE_4__ {scalar_t__ scsi_status; scalar_t__ flags; int cmd; } ;
struct mfi_abort_frame {void* abort_mfi_addr_hi; void* abort_mfi_addr_lo; void* abort_context; TYPE_1__ header; } ;
struct TYPE_5__ {void* context; } ;
struct TYPE_6__ {TYPE_2__ header; struct mfi_abort_frame abort; } ;


 int EBUSY ;
 int MFI_CMD_ABORT ;
 int MFI_CMD_POLLED ;
 int bzero (TYPE_3__*,int) ;
 int device_printf (int ,char*) ;
 int hz ;
 struct mfi_command* mfi_dequeue_free (struct mfi_softc*) ;
 int mfi_mapcmd (struct mfi_softc*,struct mfi_command*) ;
 int mfi_release_command (struct mfi_command*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (struct mfi_command*) ;
 int tsleep (struct mfi_command**,int ,char*,int) ;

__attribute__((used)) static int
mfi_abort(struct mfi_softc *sc, struct mfi_command **cm_abort)
{
 struct mfi_command *cm;
 struct mfi_abort_frame *abort;
 int i = 0, error;
 uint32_t context = 0;

 mtx_lock(&sc->mfi_io_lock);
 if ((cm = mfi_dequeue_free(sc)) == ((void*)0)) {
  mtx_unlock(&sc->mfi_io_lock);
  return (EBUSY);
 }


 context = cm->cm_frame->header.context;
 bzero(cm->cm_frame, sizeof(union mfi_frame));
 cm->cm_frame->header.context = context;

 abort = &cm->cm_frame->abort;
 abort->header.cmd = MFI_CMD_ABORT;
 abort->header.flags = 0;
 abort->header.scsi_status = 0;
 abort->abort_context = (*cm_abort)->cm_frame->header.context;
 abort->abort_mfi_addr_lo = (uint32_t)(*cm_abort)->cm_frame_busaddr;
 abort->abort_mfi_addr_hi =
  (uint32_t)((uint64_t)(*cm_abort)->cm_frame_busaddr >> 32);
 cm->cm_data = ((void*)0);
 cm->cm_flags = MFI_CMD_POLLED;

 if ((error = mfi_mapcmd(sc, cm)) != 0)
  device_printf(sc->mfi_dev, "failed to abort command\n");
 mfi_release_command(cm);

 mtx_unlock(&sc->mfi_io_lock);
 while (i < 5 && *cm_abort != ((void*)0)) {
  tsleep(cm_abort, 0, "mfiabort",
      5 * hz);
  i++;
 }
 if (*cm_abort != ((void*)0)) {

  mtx_lock(&sc->mfi_io_lock);
  (*cm_abort)->cm_complete(*cm_abort);
  mtx_unlock(&sc->mfi_io_lock);
 }

 return (error);
}
