#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  union mfi_sgl {int dummy; } mfi_sgl ;
struct TYPE_13__ {int /*<<< orphan*/  high; } ;
union mfi_sense_ptr {int /*<<< orphan*/ * user_space; TYPE_4__ addr; TYPE_9__* sense_ptr_data; } ;
struct TYPE_14__ {int /*<<< orphan*/  cmd_status; } ;
struct TYPE_15__ {TYPE_5__ hdr; int /*<<< orphan*/ * raw; } ;
struct mfi_linux_ioc_packet {int lioc_sge_count; size_t lioc_sgl_off; int lioc_sense_len; size_t lioc_sense_off; int /*<<< orphan*/  laen_class_locale; int /*<<< orphan*/  laen_seq_num; TYPE_8__* p; TYPE_6__ lioc_frame; TYPE_3__* lioc_sgl; } ;
typedef  struct mfi_linux_ioc_packet uint8_t ;
typedef  int uint64_t ;
typedef  void* uint32_t ;
typedef  int u_long ;
struct thread {int dummy; } ;
struct mfi_softc {int /*<<< orphan*/  mfi_dev; int /*<<< orphan*/  mfi_io_lock; int /*<<< orphan*/  mfi_aen_pids; } ;
struct mfi_linux_ioc_aen {int lioc_sge_count; size_t lioc_sgl_off; int lioc_sense_len; size_t lioc_sense_off; int /*<<< orphan*/  laen_class_locale; int /*<<< orphan*/  laen_seq_num; TYPE_8__* p; TYPE_6__ lioc_frame; TYPE_3__* lioc_sgl; } ;
struct mfi_command {int cm_flags; int cm_len; TYPE_9__* cm_frame; struct mfi_linux_ioc_packet* cm_sense; int /*<<< orphan*/  cm_sense_busaddr; struct mfi_linux_ioc_packet* cm_data; union mfi_sgl* cm_sg; int /*<<< orphan*/  cm_total_frame_size; } ;
struct mfi_aen {int lioc_sge_count; size_t lioc_sgl_off; int lioc_sense_len; size_t lioc_sense_off; int /*<<< orphan*/  laen_class_locale; int /*<<< orphan*/  laen_seq_num; TYPE_8__* p; TYPE_6__ lioc_frame; TYPE_3__* lioc_sgl; } ;
struct cdev {struct mfi_softc* si_drv1; } ;
typedef  int /*<<< orphan*/  l_ioc ;
typedef  int /*<<< orphan*/  l_aen ;
typedef  int /*<<< orphan*/ * caddr_t ;
struct TYPE_16__ {int flags; int data_len; struct mfi_linux_ioc_packet cmd_status; int /*<<< orphan*/  cmd; void* context; int /*<<< orphan*/  pad0; int /*<<< orphan*/  scsi_status; } ;
struct TYPE_11__ {void* sense_addr_hi; void* sense_addr_lo; } ;
struct TYPE_10__ {int /*<<< orphan*/  opcode; } ;
struct TYPE_18__ {TYPE_7__ header; TYPE_2__ pass; TYPE_1__ dcmd; int /*<<< orphan*/ * bytes; } ;
struct TYPE_17__ {int p_pid; } ;
struct TYPE_12__ {int iov_len; int /*<<< orphan*/  iov_base; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int MAX_LINUX_IOCTL_SGE ; 
 int MFI_CMD_DATAIN ; 
 int MFI_CMD_DATAOUT ; 
 int /*<<< orphan*/  MFI_CMD_DCMD ; 
 int /*<<< orphan*/  MFI_CMD_PD_SCSI_IO ; 
 int MFI_DCMD_FRAME_SIZE ; 
 int MFI_FRAME_DATAIN ; 
 int MFI_FRAME_DATAOUT ; 
#define  MFI_LINUX_CMD_2 129 
#define  MFI_LINUX_SET_AEN_2 128 
 int /*<<< orphan*/  M_MFIBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mfi_linux_ioc_packet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mfi_linux_ioc_packet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aen_link ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_9__*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct mfi_linux_ioc_packet*,int) ; 
 int FUNC5 (struct mfi_linux_ioc_packet*,int /*<<< orphan*/ *,int) ; 
 TYPE_8__* curproc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct mfi_linux_ioc_packet*,int /*<<< orphan*/ ) ; 
 struct mfi_linux_ioc_packet* FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct mfi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mfi_softc*,struct mfi_command*) ; 
 int FUNC11 (struct mfi_softc*,struct mfi_command*) ; 
 int FUNC12 (struct mfi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mfi_softc*,int) ; 
 struct mfi_command* FUNC14 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct mfi_command*) ; 
 int FUNC16 (struct mfi_softc*,struct mfi_command*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*,int) ; 

__attribute__((used)) static int
FUNC20(struct cdev *dev, u_long cmd, caddr_t arg, int flag, struct thread *td)
{
	struct mfi_softc *sc;
	struct mfi_linux_ioc_packet l_ioc;
	struct mfi_linux_ioc_aen l_aen;
	struct mfi_command *cm = NULL;
	struct mfi_aen *mfi_aen_entry;
	union mfi_sense_ptr sense_ptr;
	uint32_t context = 0;
	uint8_t *data = NULL, *temp;
	int i;
	int error, locked;

	sc = dev->si_drv1;
	error = 0;
	switch (cmd) {
	case MFI_LINUX_CMD_2: /* Firmware Linux ioctl shim */
		error = FUNC4(arg, &l_ioc, sizeof(l_ioc));
		if (error != 0)
			return (error);

		if (l_ioc.lioc_sge_count > MAX_LINUX_IOCTL_SGE) {
			return (EINVAL);
		}

		FUNC17(&sc->mfi_io_lock);
		if ((cm = FUNC14(sc)) == NULL) {
			FUNC18(&sc->mfi_io_lock);
			return (EBUSY);
		}
		FUNC18(&sc->mfi_io_lock);
		locked = 0;

		/*
		 * save off original context since copying from user
		 * will clobber some data
		 */
		context = cm->cm_frame->header.context;

		FUNC3(l_ioc.lioc_frame.raw, cm->cm_frame,
		      2 * MFI_DCMD_FRAME_SIZE);	/* this isn't quite right */
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
			cm->cm_data = data = FUNC8(cm->cm_len, M_MFIBUF,
			    M_WAITOK | M_ZERO);
		} else {
			cm->cm_data = 0;
		}

		/* restore header context */
		cm->cm_frame->header.context = context;

		temp = data;
		if (cm->cm_flags & MFI_CMD_DATAOUT) {
			for (i = 0; i < l_ioc.lioc_sge_count; i++) {
				error = FUNC4(FUNC0(l_ioc.lioc_sgl[i].iov_base),
				       temp,
				       l_ioc.lioc_sgl[i].iov_len);
				if (error != 0) {
					FUNC6(sc->mfi_dev,
					    "Copy in failed\n");
					goto out;
				}
				temp = &temp[l_ioc.lioc_sgl[i].iov_len];
			}
		}

		if (cm->cm_frame->header.cmd == MFI_CMD_DCMD)
			locked = FUNC12(sc, cm->cm_frame->dcmd.opcode);

		if (cm->cm_frame->header.cmd == MFI_CMD_PD_SCSI_IO) {
			cm->cm_frame->pass.sense_addr_lo =
			    (uint32_t)cm->cm_sense_busaddr;
			cm->cm_frame->pass.sense_addr_hi =
			    (uint32_t)((uint64_t)cm->cm_sense_busaddr >> 32);
		}

		FUNC17(&sc->mfi_io_lock);
		error = FUNC11(sc, cm);
		if (error) {
			FUNC18(&sc->mfi_io_lock);
			goto out;
		}

		if ((error = FUNC16(sc, cm)) != 0) {
			FUNC6(sc->mfi_dev,
			    "Controller polled failed\n");
			FUNC18(&sc->mfi_io_lock);
			goto out;
		}

		FUNC10(sc, cm);
		FUNC18(&sc->mfi_io_lock);

		temp = data;
		if (cm->cm_flags & MFI_CMD_DATAIN) {
			for (i = 0; i < l_ioc.lioc_sge_count; i++) {
				error = FUNC5(temp,
					FUNC0(l_ioc.lioc_sgl[i].iov_base),
					l_ioc.lioc_sgl[i].iov_len);
				if (error != 0) {
					FUNC6(sc->mfi_dev,
					    "Copy out failed\n");
					goto out;
				}
				temp = &temp[l_ioc.lioc_sgl[i].iov_len];
			}
		}

		if (l_ioc.lioc_sense_len) {
			/* get user-space sense ptr then copy out sense */
			FUNC3(&((struct mfi_linux_ioc_packet*)arg)
                            ->lioc_frame.raw[l_ioc.lioc_sense_off],
			    &sense_ptr.sense_ptr_data[0],
			    sizeof(sense_ptr.sense_ptr_data));
#ifdef __amd64__
			/*
			 * only 32bit Linux support so zero out any
			 * address over 32bit
			 */
			sense_ptr.addr.high = 0;
#endif
			error = FUNC5(cm->cm_sense, sense_ptr.user_space,
			    l_ioc.lioc_sense_len);
			if (error != 0) {
				FUNC6(sc->mfi_dev,
				    "Copy out failed\n");
				goto out;
			}
		}

		error = FUNC5(&cm->cm_frame->header.cmd_status,
			&((struct mfi_linux_ioc_packet*)arg)
			->lioc_frame.hdr.cmd_status,
			1);
		if (error != 0) {
			FUNC6(sc->mfi_dev,
				      "Copy out failed\n");
			goto out;
		}

out:
		FUNC13(sc, locked);
		if (data)
			FUNC7(data, M_MFIBUF);
		if (cm) {
			FUNC17(&sc->mfi_io_lock);
			FUNC15(cm);
			FUNC18(&sc->mfi_io_lock);
		}

		return (error);
	case MFI_LINUX_SET_AEN_2: /* AEN Linux ioctl shim */
		error = FUNC4(arg, &l_aen, sizeof(l_aen));
		if (error != 0)
			return (error);
		FUNC19("AEN IMPLEMENTED for pid %d\n", curproc->p_pid);
		mfi_aen_entry = FUNC8(sizeof(struct mfi_aen), M_MFIBUF,
		    M_WAITOK);
		FUNC17(&sc->mfi_io_lock);
		if (mfi_aen_entry != NULL) {
			mfi_aen_entry->p = curproc;
			FUNC1(&sc->mfi_aen_pids, mfi_aen_entry,
			    aen_link);
		}
		error = FUNC9(sc, l_aen.laen_seq_num,
		    l_aen.laen_class_locale);

		if (error != 0) {
			FUNC2(&sc->mfi_aen_pids, mfi_aen_entry,
			    aen_link);
			FUNC7(mfi_aen_entry, M_MFIBUF);
		}
		FUNC18(&sc->mfi_io_lock);

		return (error);
	default:
		FUNC6(sc->mfi_dev, "IOCTL 0x%lx not handled\n", cmd);
		error = ENOENT;
		break;
	}

	return (error);
}