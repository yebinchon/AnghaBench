#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mfi_softc {int /*<<< orphan*/  mfi_buffer_dmat; int /*<<< orphan*/  mfi_dev; int /*<<< orphan*/  mfi_io_lock; } ;
struct mfi_evt_log_state {int dummy; } ;
struct mfi_command {int cm_flags; int /*<<< orphan*/  cm_dmamap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int MFI_CMD_DATAIN ; 
 int MFI_CMD_POLLED ; 
 int /*<<< orphan*/  MFI_DCMD_CTRL_EVENT_GETINFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct mfi_softc*,struct mfi_command**,int /*<<< orphan*/ ,void**,int) ; 
 int FUNC4 (struct mfi_softc*,struct mfi_command*) ; 
 int /*<<< orphan*/  FUNC5 (struct mfi_command*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct mfi_softc *sc, struct mfi_evt_log_state **log_state)
{
	struct mfi_command *cm = NULL;
	int error;

	FUNC6(&sc->mfi_io_lock, MA_OWNED);
	error = FUNC3(sc, &cm, MFI_DCMD_CTRL_EVENT_GETINFO,
	    (void **)log_state, sizeof(**log_state));
	if (error)
		goto out;
	cm->cm_flags = MFI_CMD_DATAIN | MFI_CMD_POLLED;

	if ((error = FUNC4(sc, cm)) != 0) {
		FUNC2(sc->mfi_dev, "Failed to get log state\n");
		goto out;
	}

	FUNC0(sc->mfi_buffer_dmat, cm->cm_dmamap,
	    BUS_DMASYNC_POSTREAD);
	FUNC1(sc->mfi_buffer_dmat, cm->cm_dmamap);

out:
	if (cm)
		FUNC5(cm);

	return (error);
}