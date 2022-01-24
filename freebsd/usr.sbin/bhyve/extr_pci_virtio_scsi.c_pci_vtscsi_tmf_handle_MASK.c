#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  task_status; int /*<<< orphan*/  task_action; scalar_t__ tag_num; int /*<<< orphan*/  tag_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  targ_lun; int /*<<< orphan*/  initid; } ;
struct TYPE_5__ {TYPE_1__ nexus; int /*<<< orphan*/  io_type; } ;
union ctl_io {TYPE_3__ taskio; TYPE_2__ io_hdr; } ;
typedef  scalar_t__ uint32_t ;
struct sbuf {int dummy; } ;
struct pci_vtscsi_softc {int /*<<< orphan*/  vss_ctl_fd; int /*<<< orphan*/  vss_iid; } ;
struct pci_vtscsi_ctrl_tmf {int subtype; int /*<<< orphan*/  response; scalar_t__ id; int /*<<< orphan*/  lun; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_IO ; 
 int /*<<< orphan*/  CTL_IO_TASK ; 
 int /*<<< orphan*/  CTL_TAG_SIMPLE ; 
 int /*<<< orphan*/  CTL_TASK_ABORT_TASK ; 
 int /*<<< orphan*/  CTL_TASK_ABORT_TASK_SET ; 
 int /*<<< orphan*/  CTL_TASK_CLEAR_ACA ; 
 int /*<<< orphan*/  CTL_TASK_CLEAR_TASK_SET ; 
 int /*<<< orphan*/  CTL_TASK_I_T_NEXUS_RESET ; 
 int /*<<< orphan*/  CTL_TASK_LUN_RESET ; 
 int /*<<< orphan*/  CTL_TASK_QUERY_TASK ; 
 int /*<<< orphan*/  CTL_TASK_QUERY_TASK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  VIRTIO_SCSI_T_TMF_ABORT_TASK 135 
#define  VIRTIO_SCSI_T_TMF_ABORT_TASK_SET 134 
#define  VIRTIO_SCSI_T_TMF_CLEAR_ACA 133 
#define  VIRTIO_SCSI_T_TMF_CLEAR_TASK_SET 132 
#define  VIRTIO_SCSI_T_TMF_I_T_NEXUS_RESET 131 
#define  VIRTIO_SCSI_T_TMF_LOGICAL_UNIT_RESET 130 
#define  VIRTIO_SCSI_T_TMF_QUERY_TASK 129 
#define  VIRTIO_SCSI_T_TMF_QUERY_TASK_SET 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (union ctl_io*,struct sbuf*) ; 
 union ctl_io* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC5 (union ctl_io*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ctl_io*) ; 
 scalar_t__ pci_vtscsi_debug ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct sbuf*) ; 
 struct sbuf* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct pci_vtscsi_softc *sc,
    struct pci_vtscsi_ctrl_tmf *tmf)
{
	union ctl_io *io;
	int err;

	io = FUNC3(sc->vss_iid);
	FUNC5(io);

	io->io_hdr.io_type = CTL_IO_TASK;
	io->io_hdr.nexus.initid = sc->vss_iid;
	io->io_hdr.nexus.targ_lun = FUNC7(tmf->lun);
	io->taskio.tag_type = CTL_TAG_SIMPLE;
	io->taskio.tag_num = (uint32_t)tmf->id;

	switch (tmf->subtype) {
	case VIRTIO_SCSI_T_TMF_ABORT_TASK:
		io->taskio.task_action = CTL_TASK_ABORT_TASK;
		break;

	case VIRTIO_SCSI_T_TMF_ABORT_TASK_SET:
		io->taskio.task_action = CTL_TASK_ABORT_TASK_SET;
		break;

	case VIRTIO_SCSI_T_TMF_CLEAR_ACA:
		io->taskio.task_action = CTL_TASK_CLEAR_ACA;
		break;

	case VIRTIO_SCSI_T_TMF_CLEAR_TASK_SET:
		io->taskio.task_action = CTL_TASK_CLEAR_TASK_SET;
		break;

	case VIRTIO_SCSI_T_TMF_I_T_NEXUS_RESET:
		io->taskio.task_action = CTL_TASK_I_T_NEXUS_RESET;
		break;

	case VIRTIO_SCSI_T_TMF_LOGICAL_UNIT_RESET:
		io->taskio.task_action = CTL_TASK_LUN_RESET;
		break;

	case VIRTIO_SCSI_T_TMF_QUERY_TASK:
		io->taskio.task_action = CTL_TASK_QUERY_TASK;
		break;

	case VIRTIO_SCSI_T_TMF_QUERY_TASK_SET:
		io->taskio.task_action = CTL_TASK_QUERY_TASK_SET;
		break;
	}

	if (pci_vtscsi_debug) {
		struct sbuf *sb = FUNC11();
		FUNC2(io, sb);
		FUNC10(sb);
		FUNC0(("pci_virtio_scsi: %s", FUNC8(sb)));
		FUNC9(sb);
	}

	err = FUNC6(sc->vss_ctl_fd, CTL_IO, io);
	if (err != 0)
		FUNC1(("CTL_IO: err=%d (%s)\n", errno, FUNC12(errno)));

	tmf->response = io->taskio.task_status;
	FUNC4(io);
	return (1);
}