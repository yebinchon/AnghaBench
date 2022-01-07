
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef union mfi_sgl {int dummy; } mfi_sgl ;
struct TYPE_13__ {int high; } ;
union mfi_sense_ptr {int * user_space; TYPE_4__ addr; TYPE_9__* sense_ptr_data; } ;
struct TYPE_14__ {int cmd_status; } ;
struct TYPE_15__ {TYPE_5__ hdr; int * raw; } ;
struct mfi_linux_ioc_packet {int lioc_sge_count; size_t lioc_sgl_off; int lioc_sense_len; size_t lioc_sense_off; int laen_class_locale; int laen_seq_num; TYPE_8__* p; TYPE_6__ lioc_frame; TYPE_3__* lioc_sgl; } ;
typedef struct mfi_linux_ioc_packet uint8_t ;
typedef int uint64_t ;
typedef void* uint32_t ;
typedef int u_long ;
struct thread {int dummy; } ;
struct mfi_softc {int mfi_dev; int mfi_io_lock; int mfi_aen_pids; } ;
struct mfi_linux_ioc_aen {int lioc_sge_count; size_t lioc_sgl_off; int lioc_sense_len; size_t lioc_sense_off; int laen_class_locale; int laen_seq_num; TYPE_8__* p; TYPE_6__ lioc_frame; TYPE_3__* lioc_sgl; } ;
struct mfi_command {int cm_flags; int cm_len; TYPE_9__* cm_frame; struct mfi_linux_ioc_packet* cm_sense; int cm_sense_busaddr; struct mfi_linux_ioc_packet* cm_data; union mfi_sgl* cm_sg; int cm_total_frame_size; } ;
struct mfi_aen {int lioc_sge_count; size_t lioc_sgl_off; int lioc_sense_len; size_t lioc_sense_off; int laen_class_locale; int laen_seq_num; TYPE_8__* p; TYPE_6__ lioc_frame; TYPE_3__* lioc_sgl; } ;
struct cdev {struct mfi_softc* si_drv1; } ;
typedef int l_ioc ;
typedef int l_aen ;
typedef int * caddr_t ;
struct TYPE_16__ {int flags; int data_len; struct mfi_linux_ioc_packet cmd_status; int cmd; void* context; int pad0; int scsi_status; } ;
struct TYPE_11__ {void* sense_addr_hi; void* sense_addr_lo; } ;
struct TYPE_10__ {int opcode; } ;
struct TYPE_18__ {TYPE_7__ header; TYPE_2__ pass; TYPE_1__ dcmd; int * bytes; } ;
struct TYPE_17__ {int p_pid; } ;
struct TYPE_12__ {int iov_len; int iov_base; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int MAX_LINUX_IOCTL_SGE ;
 int MFI_CMD_DATAIN ;
 int MFI_CMD_DATAOUT ;
 int MFI_CMD_DCMD ;
 int MFI_CMD_PD_SCSI_IO ;
 int MFI_DCMD_FRAME_SIZE ;
 int MFI_FRAME_DATAIN ;
 int MFI_FRAME_DATAOUT ;


 int M_MFIBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int * PTRIN (int ) ;
 int TAILQ_INSERT_TAIL (int *,struct mfi_linux_ioc_packet*,int ) ;
 int TAILQ_REMOVE (int *,struct mfi_linux_ioc_packet*,int ) ;
 int aen_link ;
 int bcopy (int *,TYPE_9__*,int) ;
 int copyin (int *,struct mfi_linux_ioc_packet*,int) ;
 int copyout (struct mfi_linux_ioc_packet*,int *,int) ;
 TYPE_8__* curproc ;
 int device_printf (int ,char*,...) ;
 int free (struct mfi_linux_ioc_packet*,int ) ;
 struct mfi_linux_ioc_packet* malloc (int,int ,int) ;
 int mfi_aen_register (struct mfi_softc*,int ,int ) ;
 int mfi_check_command_post (struct mfi_softc*,struct mfi_command*) ;
 int mfi_check_command_pre (struct mfi_softc*,struct mfi_command*) ;
 int mfi_config_lock (struct mfi_softc*,int ) ;
 int mfi_config_unlock (struct mfi_softc*,int) ;
 struct mfi_command* mfi_dequeue_free (struct mfi_softc*) ;
 int mfi_release_command (struct mfi_command*) ;
 int mfi_wait_command (struct mfi_softc*,struct mfi_command*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int) ;

__attribute__((used)) static int
mfi_linux_ioctl_int(struct cdev *dev, u_long cmd, caddr_t arg, int flag, struct thread *td)
{
 struct mfi_softc *sc;
 struct mfi_linux_ioc_packet l_ioc;
 struct mfi_linux_ioc_aen l_aen;
 struct mfi_command *cm = ((void*)0);
 struct mfi_aen *mfi_aen_entry;
 union mfi_sense_ptr sense_ptr;
 uint32_t context = 0;
 uint8_t *data = ((void*)0), *temp;
 int i;
 int error, locked;

 sc = dev->si_drv1;
 error = 0;
 switch (cmd) {
 case 129:
  error = copyin(arg, &l_ioc, sizeof(l_ioc));
  if (error != 0)
   return (error);

  if (l_ioc.lioc_sge_count > MAX_LINUX_IOCTL_SGE) {
   return (EINVAL);
  }

  mtx_lock(&sc->mfi_io_lock);
  if ((cm = mfi_dequeue_free(sc)) == ((void*)0)) {
   mtx_unlock(&sc->mfi_io_lock);
   return (EBUSY);
  }
  mtx_unlock(&sc->mfi_io_lock);
  locked = 0;





  context = cm->cm_frame->header.context;

  bcopy(l_ioc.lioc_frame.raw, cm->cm_frame,
        2 * MFI_DCMD_FRAME_SIZE);
  cm->cm_total_frame_size = (sizeof(union mfi_sgl)
        * l_ioc.lioc_sge_count) + l_ioc.lioc_sgl_off;
  cm->cm_frame->header.scsi_status = 0;
  cm->cm_frame->header.pad0 = 0;
  if (l_ioc.lioc_sge_count)
   cm->cm_sg =
       (union mfi_sgl *)&cm->cm_frame->bytes[l_ioc.lioc_sgl_off];
  cm->cm_flags = 0;
  if (cm->cm_frame->header.flags & MFI_FRAME_DATAIN)
   cm->cm_flags |= MFI_CMD_DATAIN;
  if (cm->cm_frame->header.flags & MFI_FRAME_DATAOUT)
   cm->cm_flags |= MFI_CMD_DATAOUT;
  cm->cm_len = cm->cm_frame->header.data_len;
  if (cm->cm_len &&
        (cm->cm_flags & (MFI_CMD_DATAIN | MFI_CMD_DATAOUT))) {
   cm->cm_data = data = malloc(cm->cm_len, M_MFIBUF,
       M_WAITOK | M_ZERO);
  } else {
   cm->cm_data = 0;
  }


  cm->cm_frame->header.context = context;

  temp = data;
  if (cm->cm_flags & MFI_CMD_DATAOUT) {
   for (i = 0; i < l_ioc.lioc_sge_count; i++) {
    error = copyin(PTRIN(l_ioc.lioc_sgl[i].iov_base),
           temp,
           l_ioc.lioc_sgl[i].iov_len);
    if (error != 0) {
     device_printf(sc->mfi_dev,
         "Copy in failed\n");
     goto out;
    }
    temp = &temp[l_ioc.lioc_sgl[i].iov_len];
   }
  }

  if (cm->cm_frame->header.cmd == MFI_CMD_DCMD)
   locked = mfi_config_lock(sc, cm->cm_frame->dcmd.opcode);

  if (cm->cm_frame->header.cmd == MFI_CMD_PD_SCSI_IO) {
   cm->cm_frame->pass.sense_addr_lo =
       (uint32_t)cm->cm_sense_busaddr;
   cm->cm_frame->pass.sense_addr_hi =
       (uint32_t)((uint64_t)cm->cm_sense_busaddr >> 32);
  }

  mtx_lock(&sc->mfi_io_lock);
  error = mfi_check_command_pre(sc, cm);
  if (error) {
   mtx_unlock(&sc->mfi_io_lock);
   goto out;
  }

  if ((error = mfi_wait_command(sc, cm)) != 0) {
   device_printf(sc->mfi_dev,
       "Controller polled failed\n");
   mtx_unlock(&sc->mfi_io_lock);
   goto out;
  }

  mfi_check_command_post(sc, cm);
  mtx_unlock(&sc->mfi_io_lock);

  temp = data;
  if (cm->cm_flags & MFI_CMD_DATAIN) {
   for (i = 0; i < l_ioc.lioc_sge_count; i++) {
    error = copyout(temp,
     PTRIN(l_ioc.lioc_sgl[i].iov_base),
     l_ioc.lioc_sgl[i].iov_len);
    if (error != 0) {
     device_printf(sc->mfi_dev,
         "Copy out failed\n");
     goto out;
    }
    temp = &temp[l_ioc.lioc_sgl[i].iov_len];
   }
  }

  if (l_ioc.lioc_sense_len) {

   bcopy(&((struct mfi_linux_ioc_packet*)arg)
                            ->lioc_frame.raw[l_ioc.lioc_sense_off],
       &sense_ptr.sense_ptr_data[0],
       sizeof(sense_ptr.sense_ptr_data));





   sense_ptr.addr.high = 0;

   error = copyout(cm->cm_sense, sense_ptr.user_space,
       l_ioc.lioc_sense_len);
   if (error != 0) {
    device_printf(sc->mfi_dev,
        "Copy out failed\n");
    goto out;
   }
  }

  error = copyout(&cm->cm_frame->header.cmd_status,
   &((struct mfi_linux_ioc_packet*)arg)
   ->lioc_frame.hdr.cmd_status,
   1);
  if (error != 0) {
   device_printf(sc->mfi_dev,
          "Copy out failed\n");
   goto out;
  }

out:
  mfi_config_unlock(sc, locked);
  if (data)
   free(data, M_MFIBUF);
  if (cm) {
   mtx_lock(&sc->mfi_io_lock);
   mfi_release_command(cm);
   mtx_unlock(&sc->mfi_io_lock);
  }

  return (error);
 case 128:
  error = copyin(arg, &l_aen, sizeof(l_aen));
  if (error != 0)
   return (error);
  printf("AEN IMPLEMENTED for pid %d\n", curproc->p_pid);
  mfi_aen_entry = malloc(sizeof(struct mfi_aen), M_MFIBUF,
      M_WAITOK);
  mtx_lock(&sc->mfi_io_lock);
  if (mfi_aen_entry != ((void*)0)) {
   mfi_aen_entry->p = curproc;
   TAILQ_INSERT_TAIL(&sc->mfi_aen_pids, mfi_aen_entry,
       aen_link);
  }
  error = mfi_aen_register(sc, l_aen.laen_seq_num,
      l_aen.laen_class_locale);

  if (error != 0) {
   TAILQ_REMOVE(&sc->mfi_aen_pids, mfi_aen_entry,
       aen_link);
   free(mfi_aen_entry, M_MFIBUF);
  }
  mtx_unlock(&sc->mfi_io_lock);

  return (error);
 default:
  device_printf(sc->mfi_dev, "IOCTL 0x%lx not handled\n", cmd);
  error = ENOENT;
  break;
 }

 return (error);
}
