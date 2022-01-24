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
typedef  int uint32_t ;
struct mfi_softc {int mfi_max_io; int mfi_max_sge; int /*<<< orphan*/  mfi_io_lock; int /*<<< orphan*/  disableOnlineCtrlReset; int /*<<< orphan*/  mfi_buffer_dmat; int /*<<< orphan*/  mfi_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  disableOnlineCtrlReset; } ;
struct TYPE_6__ {TYPE_2__ OnOffProperties; } ;
struct TYPE_4__ {int max; } ;
struct mfi_ctrl_info {int max_strips_per_io; int max_request_size; TYPE_3__ properties; TYPE_1__ stripe_sz_ops; } ;
struct mfi_command {int cm_flags; int /*<<< orphan*/  cm_dmamap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int MFI_CMD_DATAIN ; 
 int MFI_CMD_POLLED ; 
 int /*<<< orphan*/  MFI_DCMD_CTRL_GETINFO ; 
 int MFI_SECTOR_LEN ; 
 int /*<<< orphan*/  M_MFIBUF ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mfi_ctrl_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mfi_softc*,struct mfi_command**,int /*<<< orphan*/ ,void**,int) ; 
 int FUNC5 (struct mfi_softc*,struct mfi_command*) ; 
 int /*<<< orphan*/  FUNC6 (struct mfi_command*) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct mfi_softc *sc)
{
	struct mfi_command *cm = NULL;
	struct mfi_ctrl_info *ci = NULL;
	uint32_t max_sectors_1, max_sectors_2;
	int error;

	FUNC8(&sc->mfi_io_lock);
	error = FUNC4(sc, &cm, MFI_DCMD_CTRL_GETINFO,
	    (void **)&ci, sizeof(*ci));
	if (error)
		goto out;
	cm->cm_flags = MFI_CMD_DATAIN | MFI_CMD_POLLED;

	if ((error = FUNC5(sc, cm)) != 0) {
		FUNC2(sc->mfi_dev, "Failed to get controller info\n");
		sc->mfi_max_io = (sc->mfi_max_sge - 1) * PAGE_SIZE /
		    MFI_SECTOR_LEN;
		error = 0;
		goto out;
	}

	FUNC0(sc->mfi_buffer_dmat, cm->cm_dmamap,
	    BUS_DMASYNC_POSTREAD);
	FUNC1(sc->mfi_buffer_dmat, cm->cm_dmamap);

	max_sectors_1 = (1 << ci->stripe_sz_ops.max) * ci->max_strips_per_io;
	max_sectors_2 = ci->max_request_size;
	sc->mfi_max_io = FUNC7(max_sectors_1, max_sectors_2);
	sc->disableOnlineCtrlReset =
	    ci->properties.OnOffProperties.disableOnlineCtrlReset;

out:
	if (ci)
		FUNC3(ci, M_MFIBUF);
	if (cm)
		FUNC6(cm);
	FUNC9(&sc->mfi_io_lock);
	return (error);
}