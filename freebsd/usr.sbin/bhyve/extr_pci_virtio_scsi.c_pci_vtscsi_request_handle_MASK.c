#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int ext_data_filled; int /*<<< orphan*/  sense_data; int /*<<< orphan*/  scsi_status; int /*<<< orphan*/  residual; int /*<<< orphan*/  sense_len; int /*<<< orphan*/ * cdb; int /*<<< orphan*/  cdb_len; void* ext_data_len; void* ext_data_ptr; void* ext_sg_entries; int /*<<< orphan*/  tag_type; void* tag_num; } ;
struct TYPE_5__ {int /*<<< orphan*/  targ_lun; int /*<<< orphan*/  initid; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  io_type; TYPE_1__ nexus; } ;
union ctl_io {TYPE_4__ scsiio; TYPE_2__ io_hdr; } ;
typedef  void* uint32_t ;
struct sbuf {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  sense_size; int /*<<< orphan*/  cdb_size; } ;
struct pci_vtscsi_softc {TYPE_3__ vss_config; int /*<<< orphan*/  vss_ctl_fd; int /*<<< orphan*/  vss_iid; } ;
struct pci_vtscsi_req_cmd_wr {int task_attr; int /*<<< orphan*/  sense_len; int /*<<< orphan*/  sense; int /*<<< orphan*/  response; int /*<<< orphan*/  status; int /*<<< orphan*/  residual; int /*<<< orphan*/ * cdb; scalar_t__ id; int /*<<< orphan*/  lun; } ;
struct pci_vtscsi_req_cmd_rd {int task_attr; int /*<<< orphan*/  sense_len; int /*<<< orphan*/  sense; int /*<<< orphan*/  response; int /*<<< orphan*/  status; int /*<<< orphan*/  residual; int /*<<< orphan*/ * cdb; scalar_t__ id; int /*<<< orphan*/  lun; } ;
struct pci_vtscsi_queue {struct pci_vtscsi_softc* vsq_sc; } ;
struct iovec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_FLAG_DATA_IN ; 
 int /*<<< orphan*/  CTL_FLAG_DATA_OUT ; 
 int /*<<< orphan*/  CTL_IO ; 
 int /*<<< orphan*/  CTL_IO_SCSI ; 
 int /*<<< orphan*/  CTL_TAG_ACA ; 
 int /*<<< orphan*/  CTL_TAG_HEAD_OF_QUEUE ; 
 int /*<<< orphan*/  CTL_TAG_ORDERED ; 
 int /*<<< orphan*/  CTL_TAG_SIMPLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  VIRTIO_SCSI_S_ACA 131 
 int /*<<< orphan*/  VIRTIO_SCSI_S_FAILURE ; 
#define  VIRTIO_SCSI_S_HEAD 130 
 int /*<<< orphan*/  VIRTIO_SCSI_S_OK ; 
#define  VIRTIO_SCSI_S_ORDERED 129 
#define  VIRTIO_SCSI_S_SIMPLE 128 
 int FUNC2 (struct pci_vtscsi_softc*) ; 
 int VTSCSI_MAXSEG ; 
 int FUNC3 (struct pci_vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_vtscsi_req_cmd_wr*,int,struct iovec*,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct iovec*,int) ; 
 int /*<<< orphan*/  FUNC7 (union ctl_io*,struct sbuf*) ; 
 union ctl_io* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC10 (union ctl_io*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC11 (struct pci_vtscsi_req_cmd_wr*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ctl_io*) ; 
 int /*<<< orphan*/  FUNC13 (struct iovec*,int,void**) ; 
 struct pci_vtscsi_req_cmd_wr* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ pci_vtscsi_debug ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC18 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC19 (struct sbuf*) ; 
 struct sbuf* FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct iovec*,int,struct iovec*,int*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct iovec*,int*,int) ; 

__attribute__((used)) static int
FUNC24(struct pci_vtscsi_queue *q, struct iovec *iov_in,
    int niov_in, struct iovec *iov_out, int niov_out)
{
	struct pci_vtscsi_softc *sc = q->vsq_sc;
	struct pci_vtscsi_req_cmd_rd *cmd_rd = NULL;
	struct pci_vtscsi_req_cmd_wr *cmd_wr;
	struct iovec data_iov_in[VTSCSI_MAXSEG], data_iov_out[VTSCSI_MAXSEG];
	union ctl_io *io;
	int data_niov_in, data_niov_out;
	void *ext_data_ptr = NULL;
	uint32_t ext_data_len = 0, ext_sg_entries = 0;
	int err, nxferred;

	FUNC21(iov_in, niov_in, data_iov_in, &data_niov_in,
	    FUNC2(sc));
	FUNC21(iov_out, niov_out, data_iov_out, &data_niov_out,
	    FUNC3(sc));

	FUNC23(iov_in, &niov_in, FUNC2(sc));
	FUNC23(iov_out, &niov_out, FUNC3(sc));
	FUNC13(iov_in, niov_in, (void **)&cmd_rd);

	cmd_wr = FUNC14(FUNC3(sc));
	io = FUNC8(sc->vss_iid);
	FUNC10(io);

	io->io_hdr.nexus.initid = sc->vss_iid;
	io->io_hdr.nexus.targ_lun = FUNC16(cmd_rd->lun);

	io->io_hdr.io_type = CTL_IO_SCSI;

	if (data_niov_in > 0) {
		ext_data_ptr = (void *)data_iov_in;
		ext_sg_entries = data_niov_in;
		ext_data_len = FUNC6(data_iov_in, data_niov_in);
		io->io_hdr.flags |= CTL_FLAG_DATA_OUT;
	} else if (data_niov_out > 0) {
		ext_data_ptr = (void *)data_iov_out;
		ext_sg_entries = data_niov_out;
		ext_data_len = FUNC6(data_iov_out, data_niov_out);
		io->io_hdr.flags |= CTL_FLAG_DATA_IN;
	}

	io->scsiio.sense_len = sc->vss_config.sense_size;
	io->scsiio.tag_num = (uint32_t)cmd_rd->id;
	switch (cmd_rd->task_attr) {
	case VIRTIO_SCSI_S_ORDERED:
		io->scsiio.tag_type = CTL_TAG_ORDERED;
		break;
	case VIRTIO_SCSI_S_HEAD:
		io->scsiio.tag_type = CTL_TAG_HEAD_OF_QUEUE;
		break;
	case VIRTIO_SCSI_S_ACA:
		io->scsiio.tag_type = CTL_TAG_ACA;
		break;
	case VIRTIO_SCSI_S_SIMPLE:
	default:
		io->scsiio.tag_type = CTL_TAG_SIMPLE;
		break;
	}
	io->scsiio.ext_sg_entries = ext_sg_entries;
	io->scsiio.ext_data_ptr = ext_data_ptr;
	io->scsiio.ext_data_len = ext_data_len;
	io->scsiio.ext_data_filled = 0;
	io->scsiio.cdb_len = sc->vss_config.cdb_size;
	FUNC15(io->scsiio.cdb, cmd_rd->cdb, sc->vss_config.cdb_size);

	if (pci_vtscsi_debug) {
		struct sbuf *sb = FUNC20();
		FUNC7(io, sb);
		FUNC19(sb);
		FUNC0(("pci_virtio_scsi: %s", FUNC17(sb)));
		FUNC18(sb);
	}

	err = FUNC12(sc->vss_ctl_fd, CTL_IO, io);
	if (err != 0) {
		FUNC4(("CTL_IO: err=%d (%s)\n", errno, FUNC22(errno)));
		cmd_wr->response = VIRTIO_SCSI_S_FAILURE;
	} else {
		cmd_wr->sense_len = FUNC1(io->scsiio.sense_len,
		    sc->vss_config.sense_size);
		cmd_wr->residual = io->scsiio.residual;
		cmd_wr->status = io->scsiio.scsi_status;
		cmd_wr->response = VIRTIO_SCSI_S_OK;
		FUNC15(&cmd_wr->sense, &io->scsiio.sense_data,
		    cmd_wr->sense_len);
	}

	FUNC5(cmd_wr, FUNC3(sc), iov_out, niov_out, 0);
	nxferred = FUNC3(sc) + io->scsiio.ext_data_filled;
	FUNC11(cmd_rd);
	FUNC11(cmd_wr);
	FUNC9(io);
	return (nxferred);
}