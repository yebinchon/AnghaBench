
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int task_status; int task_action; scalar_t__ tag_num; int tag_type; } ;
struct TYPE_4__ {int targ_lun; int initid; } ;
struct TYPE_5__ {TYPE_1__ nexus; int io_type; } ;
union ctl_io {TYPE_3__ taskio; TYPE_2__ io_hdr; } ;
typedef scalar_t__ uint32_t ;
struct sbuf {int dummy; } ;
struct pci_vtscsi_softc {int vss_ctl_fd; int vss_iid; } ;
struct pci_vtscsi_ctrl_tmf {int subtype; int response; scalar_t__ id; int lun; } ;


 int CTL_IO ;
 int CTL_IO_TASK ;
 int CTL_TAG_SIMPLE ;
 int CTL_TASK_ABORT_TASK ;
 int CTL_TASK_ABORT_TASK_SET ;
 int CTL_TASK_CLEAR_ACA ;
 int CTL_TASK_CLEAR_TASK_SET ;
 int CTL_TASK_I_T_NEXUS_RESET ;
 int CTL_TASK_LUN_RESET ;
 int CTL_TASK_QUERY_TASK ;
 int CTL_TASK_QUERY_TASK_SET ;
 int DPRINTF (char*) ;
 int WPRINTF (char*) ;
 int ctl_io_sbuf (union ctl_io*,struct sbuf*) ;
 union ctl_io* ctl_scsi_alloc_io (int ) ;
 int ctl_scsi_free_io (union ctl_io*) ;
 int ctl_scsi_zero_io (union ctl_io*) ;
 int errno ;
 int ioctl (int ,int ,union ctl_io*) ;
 scalar_t__ pci_vtscsi_debug ;
 int pci_vtscsi_get_lun (int ) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int strerror (int ) ;

__attribute__((used)) static int
pci_vtscsi_tmf_handle(struct pci_vtscsi_softc *sc,
    struct pci_vtscsi_ctrl_tmf *tmf)
{
 union ctl_io *io;
 int err;

 io = ctl_scsi_alloc_io(sc->vss_iid);
 ctl_scsi_zero_io(io);

 io->io_hdr.io_type = CTL_IO_TASK;
 io->io_hdr.nexus.initid = sc->vss_iid;
 io->io_hdr.nexus.targ_lun = pci_vtscsi_get_lun(tmf->lun);
 io->taskio.tag_type = CTL_TAG_SIMPLE;
 io->taskio.tag_num = (uint32_t)tmf->id;

 switch (tmf->subtype) {
 case 135:
  io->taskio.task_action = CTL_TASK_ABORT_TASK;
  break;

 case 134:
  io->taskio.task_action = CTL_TASK_ABORT_TASK_SET;
  break;

 case 133:
  io->taskio.task_action = CTL_TASK_CLEAR_ACA;
  break;

 case 132:
  io->taskio.task_action = CTL_TASK_CLEAR_TASK_SET;
  break;

 case 131:
  io->taskio.task_action = CTL_TASK_I_T_NEXUS_RESET;
  break;

 case 130:
  io->taskio.task_action = CTL_TASK_LUN_RESET;
  break;

 case 129:
  io->taskio.task_action = CTL_TASK_QUERY_TASK;
  break;

 case 128:
  io->taskio.task_action = CTL_TASK_QUERY_TASK_SET;
  break;
 }

 if (pci_vtscsi_debug) {
  struct sbuf *sb = sbuf_new_auto();
  ctl_io_sbuf(io, sb);
  sbuf_finish(sb);
  DPRINTF(("pci_virtio_scsi: %s", sbuf_data(sb)));
  sbuf_delete(sb);
 }

 err = ioctl(sc->vss_ctl_fd, CTL_IO, io);
 if (err != 0)
  WPRINTF(("CTL_IO: err=%d (%s)\n", errno, strerror(errno)));

 tmf->response = io->taskio.task_status;
 ctl_scsi_free_io(io);
 return (1);
}
