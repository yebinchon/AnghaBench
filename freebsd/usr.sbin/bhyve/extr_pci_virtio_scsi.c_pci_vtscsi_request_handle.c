
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int ext_data_filled; int sense_data; int scsi_status; int residual; int sense_len; int * cdb; int cdb_len; void* ext_data_len; void* ext_data_ptr; void* ext_sg_entries; int tag_type; void* tag_num; } ;
struct TYPE_5__ {int targ_lun; int initid; } ;
struct TYPE_6__ {int flags; int io_type; TYPE_1__ nexus; } ;
union ctl_io {TYPE_4__ scsiio; TYPE_2__ io_hdr; } ;
typedef void* uint32_t ;
struct sbuf {int dummy; } ;
struct TYPE_7__ {int sense_size; int cdb_size; } ;
struct pci_vtscsi_softc {TYPE_3__ vss_config; int vss_ctl_fd; int vss_iid; } ;
struct pci_vtscsi_req_cmd_wr {int task_attr; int sense_len; int sense; int response; int status; int residual; int * cdb; scalar_t__ id; int lun; } ;
struct pci_vtscsi_req_cmd_rd {int task_attr; int sense_len; int sense; int response; int status; int residual; int * cdb; scalar_t__ id; int lun; } ;
struct pci_vtscsi_queue {struct pci_vtscsi_softc* vsq_sc; } ;
struct iovec {int dummy; } ;


 int CTL_FLAG_DATA_IN ;
 int CTL_FLAG_DATA_OUT ;
 int CTL_IO ;
 int CTL_IO_SCSI ;
 int CTL_TAG_ACA ;
 int CTL_TAG_HEAD_OF_QUEUE ;
 int CTL_TAG_ORDERED ;
 int CTL_TAG_SIMPLE ;
 int DPRINTF (char*) ;
 int MIN (int ,int ) ;

 int VIRTIO_SCSI_S_FAILURE ;

 int VIRTIO_SCSI_S_OK ;


 int VTSCSI_IN_HEADER_LEN (struct pci_vtscsi_softc*) ;
 int VTSCSI_MAXSEG ;
 int VTSCSI_OUT_HEADER_LEN (struct pci_vtscsi_softc*) ;
 int WPRINTF (char*) ;
 int buf_to_iov (struct pci_vtscsi_req_cmd_wr*,int,struct iovec*,int,int ) ;
 void* count_iov (struct iovec*,int) ;
 int ctl_io_sbuf (union ctl_io*,struct sbuf*) ;
 union ctl_io* ctl_scsi_alloc_io (int ) ;
 int ctl_scsi_free_io (union ctl_io*) ;
 int ctl_scsi_zero_io (union ctl_io*) ;
 int errno ;
 int free (struct pci_vtscsi_req_cmd_wr*) ;
 int ioctl (int ,int ,union ctl_io*) ;
 int iov_to_buf (struct iovec*,int,void**) ;
 struct pci_vtscsi_req_cmd_wr* malloc (int) ;
 int memcpy (int *,int *,int ) ;
 scalar_t__ pci_vtscsi_debug ;
 int pci_vtscsi_get_lun (int ) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int seek_iov (struct iovec*,int,struct iovec*,int*,int) ;
 int strerror (int ) ;
 int truncate_iov (struct iovec*,int*,int) ;

__attribute__((used)) static int
pci_vtscsi_request_handle(struct pci_vtscsi_queue *q, struct iovec *iov_in,
    int niov_in, struct iovec *iov_out, int niov_out)
{
 struct pci_vtscsi_softc *sc = q->vsq_sc;
 struct pci_vtscsi_req_cmd_rd *cmd_rd = ((void*)0);
 struct pci_vtscsi_req_cmd_wr *cmd_wr;
 struct iovec data_iov_in[VTSCSI_MAXSEG], data_iov_out[VTSCSI_MAXSEG];
 union ctl_io *io;
 int data_niov_in, data_niov_out;
 void *ext_data_ptr = ((void*)0);
 uint32_t ext_data_len = 0, ext_sg_entries = 0;
 int err, nxferred;

 seek_iov(iov_in, niov_in, data_iov_in, &data_niov_in,
     VTSCSI_IN_HEADER_LEN(sc));
 seek_iov(iov_out, niov_out, data_iov_out, &data_niov_out,
     VTSCSI_OUT_HEADER_LEN(sc));

 truncate_iov(iov_in, &niov_in, VTSCSI_IN_HEADER_LEN(sc));
 truncate_iov(iov_out, &niov_out, VTSCSI_OUT_HEADER_LEN(sc));
 iov_to_buf(iov_in, niov_in, (void **)&cmd_rd);

 cmd_wr = malloc(VTSCSI_OUT_HEADER_LEN(sc));
 io = ctl_scsi_alloc_io(sc->vss_iid);
 ctl_scsi_zero_io(io);

 io->io_hdr.nexus.initid = sc->vss_iid;
 io->io_hdr.nexus.targ_lun = pci_vtscsi_get_lun(cmd_rd->lun);

 io->io_hdr.io_type = CTL_IO_SCSI;

 if (data_niov_in > 0) {
  ext_data_ptr = (void *)data_iov_in;
  ext_sg_entries = data_niov_in;
  ext_data_len = count_iov(data_iov_in, data_niov_in);
  io->io_hdr.flags |= CTL_FLAG_DATA_OUT;
 } else if (data_niov_out > 0) {
  ext_data_ptr = (void *)data_iov_out;
  ext_sg_entries = data_niov_out;
  ext_data_len = count_iov(data_iov_out, data_niov_out);
  io->io_hdr.flags |= CTL_FLAG_DATA_IN;
 }

 io->scsiio.sense_len = sc->vss_config.sense_size;
 io->scsiio.tag_num = (uint32_t)cmd_rd->id;
 switch (cmd_rd->task_attr) {
 case 129:
  io->scsiio.tag_type = CTL_TAG_ORDERED;
  break;
 case 130:
  io->scsiio.tag_type = CTL_TAG_HEAD_OF_QUEUE;
  break;
 case 131:
  io->scsiio.tag_type = CTL_TAG_ACA;
  break;
 case 128:
 default:
  io->scsiio.tag_type = CTL_TAG_SIMPLE;
  break;
 }
 io->scsiio.ext_sg_entries = ext_sg_entries;
 io->scsiio.ext_data_ptr = ext_data_ptr;
 io->scsiio.ext_data_len = ext_data_len;
 io->scsiio.ext_data_filled = 0;
 io->scsiio.cdb_len = sc->vss_config.cdb_size;
 memcpy(io->scsiio.cdb, cmd_rd->cdb, sc->vss_config.cdb_size);

 if (pci_vtscsi_debug) {
  struct sbuf *sb = sbuf_new_auto();
  ctl_io_sbuf(io, sb);
  sbuf_finish(sb);
  DPRINTF(("pci_virtio_scsi: %s", sbuf_data(sb)));
  sbuf_delete(sb);
 }

 err = ioctl(sc->vss_ctl_fd, CTL_IO, io);
 if (err != 0) {
  WPRINTF(("CTL_IO: err=%d (%s)\n", errno, strerror(errno)));
  cmd_wr->response = VIRTIO_SCSI_S_FAILURE;
 } else {
  cmd_wr->sense_len = MIN(io->scsiio.sense_len,
      sc->vss_config.sense_size);
  cmd_wr->residual = io->scsiio.residual;
  cmd_wr->status = io->scsiio.scsi_status;
  cmd_wr->response = VIRTIO_SCSI_S_OK;
  memcpy(&cmd_wr->sense, &io->scsiio.sense_data,
      cmd_wr->sense_len);
 }

 buf_to_iov(cmd_wr, VTSCSI_OUT_HEADER_LEN(sc), iov_out, niov_out, 0);
 nxferred = VTSCSI_OUT_HEADER_LEN(sc) + io->scsiio.ext_data_filled;
 free(cmd_rd);
 free(cmd_wr);
 ctl_scsi_free_io(io);
 return (nxferred);
}
