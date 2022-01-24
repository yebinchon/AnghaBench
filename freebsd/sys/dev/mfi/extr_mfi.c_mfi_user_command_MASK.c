#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct mfi_softc {int /*<<< orphan*/  mfi_io_lock; int /*<<< orphan*/  mfi_dev; } ;
struct mfi_dcmd_frame {int /*<<< orphan*/  sgl; int /*<<< orphan*/  opcode; } ;
struct mfi_ioc_passthru {int buf_size; int /*<<< orphan*/  buf; struct mfi_dcmd_frame ioc_frame; } ;
struct mfi_command {int cm_len; int cm_flags; TYPE_2__* cm_frame; void* cm_data; int /*<<< orphan*/  cm_total_frame_size; int /*<<< orphan*/ * cm_sg; } ;
struct TYPE_3__ {int /*<<< orphan*/  context; } ;
struct TYPE_4__ {TYPE_1__ header; struct mfi_dcmd_frame dcmd; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MFI_CMD_DATAIN ; 
 int MFI_CMD_DATAOUT ; 
 int /*<<< orphan*/  MFI_DCMD_FRAME_SIZE ; 
 int /*<<< orphan*/  M_MFIBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct mfi_dcmd_frame*,struct mfi_dcmd_frame*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 void* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mfi_softc*,struct mfi_command*) ; 
 int FUNC7 (struct mfi_softc*,struct mfi_command*) ; 
 int FUNC8 (struct mfi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mfi_softc*,int) ; 
 struct mfi_command* FUNC10 (struct mfi_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct mfi_command*) ; 
 int FUNC12 (struct mfi_softc*,struct mfi_command*) ; 
 int /*<<< orphan*/  FUNC13 (int (*) (struct mfi_softc*,struct mfi_ioc_passthru*),int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC16(struct mfi_softc *sc, struct mfi_ioc_passthru *ioc)
{
	struct mfi_command *cm;
	struct mfi_dcmd_frame *dcmd;
	void *ioc_buf = NULL;
	uint32_t context;
	int error = 0, locked;


	if (ioc->buf_size > 0) {
		if (ioc->buf_size > 1024 * 1024)
			return (ENOMEM);
		ioc_buf = FUNC5(ioc->buf_size, M_MFIBUF, M_WAITOK);
		error = FUNC1(ioc->buf, ioc_buf, ioc->buf_size);
		if (error) {
			FUNC3(sc->mfi_dev, "failed to copyin\n");
			FUNC4(ioc_buf, M_MFIBUF);
			return (error);
		}
	}

	locked = FUNC8(sc, ioc->ioc_frame.opcode);

	FUNC14(&sc->mfi_io_lock);
	while ((cm = FUNC10(sc)) == NULL)
		FUNC13(mfi_user_command, &sc->mfi_io_lock, 0, "mfiioc", hz);

	/* Save context for later */
	context = cm->cm_frame->header.context;

	dcmd = &cm->cm_frame->dcmd;
	FUNC0(&ioc->ioc_frame, dcmd, sizeof(struct mfi_dcmd_frame));

	cm->cm_sg = &dcmd->sgl;
	cm->cm_total_frame_size = MFI_DCMD_FRAME_SIZE;
	cm->cm_data = ioc_buf;
	cm->cm_len = ioc->buf_size;

	/* restore context */
	cm->cm_frame->header.context = context;

	/* Cheat since we don't know if we're writing or reading */
	cm->cm_flags = MFI_CMD_DATAIN | MFI_CMD_DATAOUT;

	error = FUNC7(sc, cm);
	if (error)
		goto out;

	error = FUNC12(sc, cm);
	if (error) {
		FUNC3(sc->mfi_dev, "ioctl failed %d\n", error);
		goto out;
	}
	FUNC0(dcmd, &ioc->ioc_frame, sizeof(struct mfi_dcmd_frame));
	FUNC6(sc, cm);
out:
	FUNC11(cm);
	FUNC15(&sc->mfi_io_lock);
	FUNC9(sc, locked);
	if (ioc->buf_size > 0)
		error = FUNC2(ioc_buf, ioc->buf, ioc->buf_size);
	if (ioc_buf)
		FUNC4(ioc_buf, M_MFIBUF);
	return (error);
}