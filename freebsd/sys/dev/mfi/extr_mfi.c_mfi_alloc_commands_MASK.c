#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int context; } ;
union mfi_frame {TYPE_1__ header; } ;
struct mfi_softc {int mfi_max_fw_cmds; int mfi_cmd_size; struct mfi_command* mfi_commands; int /*<<< orphan*/  mfi_buffer_dmat; int /*<<< orphan*/  mfi_dev; int /*<<< orphan*/  mfi_io_lock; scalar_t__ mfi_sense_busaddr; int /*<<< orphan*/ * mfi_sense; scalar_t__ mfi_frames_busaddr; scalar_t__ mfi_frames; } ;
struct mfi_command {int cm_index; int /*<<< orphan*/  cm_dmamap; struct mfi_softc* cm_sc; scalar_t__ cm_sense_busaddr; int /*<<< orphan*/ * cm_sense; union mfi_frame* cm_frame; scalar_t__ cm_frame_busaddr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MFI_SENSE_LEN ; 
 int /*<<< orphan*/  M_MFIBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mfi_command*,int /*<<< orphan*/ ) ; 
 struct mfi_command* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mfi_command*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct mfi_softc *sc)
{
	struct mfi_command *cm;
	int i, j;

	/*
	 * XXX Should we allocate all the commands up front, or allocate on
	 * demand later like 'aac' does?
	 */
	sc->mfi_commands = FUNC4(sizeof(sc->mfi_commands[0]) *
	    sc->mfi_max_fw_cmds, M_MFIBUF, M_WAITOK | M_ZERO);

	for (i = 0; i < sc->mfi_max_fw_cmds; i++) {
		cm = &sc->mfi_commands[i];
		cm->cm_frame = (union mfi_frame *)((uintptr_t)sc->mfi_frames +
		    sc->mfi_cmd_size * i);
		cm->cm_frame_busaddr = sc->mfi_frames_busaddr +
		    sc->mfi_cmd_size * i;
		cm->cm_frame->header.context = i;
		cm->cm_sense = &sc->mfi_sense[i];
		cm->cm_sense_busaddr= sc->mfi_sense_busaddr + MFI_SENSE_LEN * i;
		cm->cm_sc = sc;
		cm->cm_index = i;
		if (FUNC0(sc->mfi_buffer_dmat, 0,
		    &cm->cm_dmamap) == 0) {
			FUNC6(&sc->mfi_io_lock);
			FUNC5(cm);
			FUNC7(&sc->mfi_io_lock);
		} else {
			FUNC2(sc->mfi_dev, "Failed to allocate %d "
			   "command blocks, only allocated %d\n",
			    sc->mfi_max_fw_cmds, i - 1);
			for (j = 0; j < i; j++) {
				cm = &sc->mfi_commands[i];
				FUNC1(sc->mfi_buffer_dmat,
				    cm->cm_dmamap);
			}
			FUNC3(sc->mfi_commands, M_MFIBUF);
			sc->mfi_commands = NULL;

			return (ENOMEM);
		}
	}

	return (0);
}