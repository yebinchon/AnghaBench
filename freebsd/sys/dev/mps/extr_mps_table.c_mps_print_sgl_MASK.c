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
typedef  int u_int ;
struct mps_softc {int dummy; } ;
struct mps_command {int /*<<< orphan*/  cm_chain_list; scalar_t__ cm_req; } ;
struct mps_chain {scalar_t__ chain; } ;
struct TYPE_4__ {int Flags; int NextChainOffset; int /*<<< orphan*/  Address; int /*<<< orphan*/  Length; } ;
struct TYPE_3__ {int /*<<< orphan*/  FlagsLength; int /*<<< orphan*/  Address; } ;
typedef  TYPE_1__ MPI2_SGE_SIMPLE64 ;
typedef  TYPE_2__ MPI2_SGE_CHAIN32 ;
typedef  int /*<<< orphan*/  MPI2_REQUEST_HEADER ;

/* Variables and functions */
 int MPI2_SGE_FLAGS_END_OF_BUFFER ; 
 int MPI2_SGE_FLAGS_END_OF_LIST ; 
 int MPI2_SGE_FLAGS_LAST_ELEMENT ; 
 int MPI2_SGE_FLAGS_SHIFT ; 
 struct mps_chain* FUNC0 (int /*<<< orphan*/ *) ; 
 struct mps_chain* FUNC1 (struct mps_chain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chain_link ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

void
FUNC7(struct mps_softc *sc, struct mps_command *cm, int offset)
{
	MPI2_SGE_SIMPLE64 *sge;
	MPI2_SGE_CHAIN32 *sgc;
	MPI2_REQUEST_HEADER *req;
	struct mps_chain *chain = NULL;
	char *frame;
	u_int i = 0, flags;

	req = (MPI2_REQUEST_HEADER *)cm->cm_req;
	frame = (char *)cm->cm_req;
	sge = (MPI2_SGE_SIMPLE64 *)&frame[offset * 4];
	FUNC6("SGL for command %p\n", cm);

	FUNC2(frame, 128, NULL, 0);
	while (frame != NULL) {
		flags = FUNC4(sge->FlagsLength) >> MPI2_SGE_FLAGS_SHIFT;
		FUNC6("seg%d flags=0x%02x len=0x%06x addr=0x%016jx\n",
		    i, flags, FUNC4(sge->FlagsLength) & 0xffffff,
		    FUNC5(&sge->Address));
		if (flags & (MPI2_SGE_FLAGS_END_OF_LIST |
		    MPI2_SGE_FLAGS_END_OF_BUFFER))
			break;
		sge++;
		i++;
		if (flags & MPI2_SGE_FLAGS_LAST_ELEMENT) {
			sgc = (MPI2_SGE_CHAIN32 *)sge;
			FUNC6("chain flags=0x%x len=0x%x Offset=0x%x "
			    "Address=0x%x\n", sgc->Flags, FUNC3(sgc->Length),
			    sgc->NextChainOffset, FUNC4(sgc->Address));
			if (chain == NULL)
				chain = FUNC0(&cm->cm_chain_list);
			else
				chain = FUNC1(chain, chain_link);
			frame = (char *)chain->chain;
			sge = (MPI2_SGE_SIMPLE64 *)frame;
			FUNC2(frame, 128, NULL, 0);
		}
	}
}