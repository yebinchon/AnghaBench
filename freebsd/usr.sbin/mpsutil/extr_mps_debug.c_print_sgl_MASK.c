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
typedef  int u_int ;
typedef  int /*<<< orphan*/  tmpbuf ;
struct TYPE_4__ {int Address32; int /*<<< orphan*/  Address64; } ;
struct TYPE_6__ {int Flags; int Length; int NextChainOffset; TYPE_1__ u; } ;
struct TYPE_5__ {int FlagsLength; int /*<<< orphan*/  Address; } ;
typedef  TYPE_2__ MPI2_SGE_SIMPLE64 ;
typedef  TYPE_3__ MPI2_SGE_CHAIN_UNION ;
typedef  int /*<<< orphan*/  MPI2_REQUEST_HEADER ;

/* Variables and functions */
 int MPI2_SGE_FLAGS_64_BIT_ADDRESSING ; 
 int MPI2_SGE_FLAGS_CHAIN_ELEMENT ; 
 int MPI2_SGE_FLAGS_END_OF_BUFFER ; 
 int MPI2_SGE_FLAGS_END_OF_LIST ; 
 int MPI2_SGE_FLAGS_LAST_ELEMENT ; 
 int MPI2_SGE_FLAGS_SHIFT ; 
 int /*<<< orphan*/  MPS_FRAME_LEN ; 
 int /*<<< orphan*/  SGL_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void
FUNC5(char *buf, int offset, int numframes)
{
	MPI2_SGE_SIMPLE64 *sge;
	MPI2_SGE_CHAIN_UNION *sgc;
	MPI2_REQUEST_HEADER *req;
	u_int i = 0, flags;
	char *frame, tmpbuf[128];

	req = (MPI2_REQUEST_HEADER *)buf;
	frame = (char *)buf;
	sge = (MPI2_SGE_SIMPLE64 *)&frame[offset * 4];
	FUNC4("SGL for command\n");

	FUNC1(frame, MPS_FRAME_LEN, NULL, 0);
	while (frame != NULL) {
		flags = sge->FlagsLength >> MPI2_SGE_FLAGS_SHIFT;
		FUNC0(tmpbuf, sizeof(tmpbuf));
		FUNC2(flags, SGL_FLAGS, tmpbuf, sizeof(tmpbuf));
		FUNC4("seg%d flags=%x %s len= 0x%06x addr=0x%016jx\n", i,
		    flags, tmpbuf, sge->FlagsLength & 0xffffff,
		    FUNC3(&sge->Address));
		if (flags & (MPI2_SGE_FLAGS_END_OF_LIST |
		    MPI2_SGE_FLAGS_END_OF_BUFFER))
			break;
		sge++;
		i++;
		if (flags & MPI2_SGE_FLAGS_LAST_ELEMENT) {
			sgc = (MPI2_SGE_CHAIN_UNION *)sge;
			if ((sgc->Flags & MPI2_SGE_FLAGS_CHAIN_ELEMENT) == 0) {
				FUNC4("Invalid chain element\n");
				break;
			}
			FUNC0(tmpbuf, sizeof(tmpbuf));
			FUNC2(sgc->Flags, SGL_FLAGS, tmpbuf,
			    sizeof(tmpbuf));
			if (sgc->Flags & MPI2_SGE_FLAGS_64_BIT_ADDRESSING)
				FUNC4("chain64 flags=0x%x %s len=0x%x "
				    "Offset=0x%x addr=0x%016jx\n", sgc->Flags,
				    tmpbuf, sgc->Length, sgc->NextChainOffset,
				    FUNC3(&sgc->u.Address64));
			else
				FUNC4("chain32 flags=0x%x %s len=0x%x "
				    "Offset=0x%x addr=0x%08x\n", sgc->Flags,
				    tmpbuf, sgc->Length, sgc->NextChainOffset,
				    sgc->u.Address32);
			if (--numframes <= 0)
				break;
			frame += MPS_FRAME_LEN;
			sge = (MPI2_SGE_SIMPLE64 *)frame;
			FUNC1(frame, MPS_FRAME_LEN, NULL, 0);
		}
	}
}