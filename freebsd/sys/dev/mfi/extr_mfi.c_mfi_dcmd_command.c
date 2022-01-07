
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union mfi_frame {int dummy; } mfi_frame ;
typedef void* uint32_t ;
struct mfi_softc {int mfi_io_lock; } ;
struct TYPE_5__ {size_t data_len; scalar_t__ scsi_status; scalar_t__ flags; scalar_t__ timeout; int cmd; } ;
struct mfi_dcmd_frame {int sgl; void* opcode; TYPE_2__ header; TYPE_3__* mbox; } ;
struct mfi_command {size_t cm_len; void* cm_private; void* cm_data; scalar_t__ cm_flags; int cm_total_frame_size; int * cm_sg; TYPE_3__* cm_frame; } ;
struct TYPE_4__ {void* context; } ;
struct TYPE_6__ {struct mfi_dcmd_frame dcmd; TYPE_1__ header; } ;


 int EBUSY ;
 int ENOMEM ;
 int MA_OWNED ;
 int MFI_CMD_DCMD ;
 int MFI_DCMD_FRAME_SIZE ;
 int MFI_MBOX_SIZE ;
 int M_MFIBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int bzero (TYPE_3__*,int) ;
 void* malloc (size_t,int ,int) ;
 struct mfi_command* mfi_dequeue_free (struct mfi_softc*) ;
 int mfi_release_command (struct mfi_command*) ;
 int mtx_assert (int *,int ) ;

int
mfi_dcmd_command(struct mfi_softc *sc, struct mfi_command **cmp,
    uint32_t opcode, void **bufp, size_t bufsize)
{
 struct mfi_command *cm;
 struct mfi_dcmd_frame *dcmd;
 void *buf = ((void*)0);
 uint32_t context = 0;

 mtx_assert(&sc->mfi_io_lock, MA_OWNED);

 cm = mfi_dequeue_free(sc);
 if (cm == ((void*)0))
  return (EBUSY);


 context = cm->cm_frame->header.context;
 bzero(cm->cm_frame, sizeof(union mfi_frame));
 cm->cm_frame->header.context = context;

 if ((bufsize > 0) && (bufp != ((void*)0))) {
  if (*bufp == ((void*)0)) {
   buf = malloc(bufsize, M_MFIBUF, M_NOWAIT|M_ZERO);
   if (buf == ((void*)0)) {
    mfi_release_command(cm);
    return (ENOMEM);
   }
   *bufp = buf;
  } else {
   buf = *bufp;
  }
 }

 dcmd = &cm->cm_frame->dcmd;
 bzero(dcmd->mbox, MFI_MBOX_SIZE);
 dcmd->header.cmd = MFI_CMD_DCMD;
 dcmd->header.timeout = 0;
 dcmd->header.flags = 0;
 dcmd->header.data_len = bufsize;
 dcmd->header.scsi_status = 0;
 dcmd->opcode = opcode;
 cm->cm_sg = &dcmd->sgl;
 cm->cm_total_frame_size = MFI_DCMD_FRAME_SIZE;
 cm->cm_flags = 0;
 cm->cm_data = buf;
 cm->cm_private = buf;
 cm->cm_len = bufsize;

 *cmp = cm;
 if ((bufp != ((void*)0)) && (*bufp == ((void*)0)) && (buf != ((void*)0)))
  *bufp = buf;
 return (0);
}
