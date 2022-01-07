
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mfi_softc {int mfi_io_lock; } ;
struct mfi_command {int cm_error; int cm_flags; TYPE_2__* cm_frame; int * cm_complete; } ;
struct TYPE_6__ {scalar_t__ opcode; } ;
struct TYPE_4__ {int cmd_status; } ;
struct TYPE_5__ {TYPE_1__ header; TYPE_3__ dcmd; } ;


 int MA_OWNED ;
 int MFI_CMD_COMPLETED ;
 int MFI_STAT_OK ;
 int PRIBIO ;
 int mfi_enqueue_ready (struct mfi_command*) ;
 int mfi_startio (struct mfi_softc*) ;
 int msleep (struct mfi_command*,int *,int ,char*,int ) ;
 int mtx_assert (int *,int ) ;

int
mfi_wait_command(struct mfi_softc *sc, struct mfi_command *cm)
{

 mtx_assert(&sc->mfi_io_lock, MA_OWNED);
 cm->cm_complete = ((void*)0);





 if (cm->cm_frame->dcmd.opcode == 0) {
  cm->cm_frame->header.cmd_status = MFI_STAT_OK;
  cm->cm_error = 0;
  return (cm->cm_error);
 }
 mfi_enqueue_ready(cm);
 mfi_startio(sc);
 if ((cm->cm_flags & MFI_CMD_COMPLETED) == 0)
  msleep(cm, &sc->mfi_io_lock, PRIBIO, "mfiwait", 0);
 return (cm->cm_error);
}
