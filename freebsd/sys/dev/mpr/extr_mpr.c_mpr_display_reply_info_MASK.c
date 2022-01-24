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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int u16 ;
struct mpr_softc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  IOCLogInfo; int /*<<< orphan*/  IOCStatus; } ;
typedef  TYPE_1__ MPI2DefaultReply_t ;

/* Variables and functions */
 int MPI2_IOCSTATUS_FLAG_LOG_INFO_AVAILABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mpr_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct mpr_softc *sc, uint8_t *reply)
{
	MPI2DefaultReply_t *mpi_reply;
	u16 sc_status;
 
	mpi_reply = (MPI2DefaultReply_t*)reply;
	sc_status = FUNC0(mpi_reply->IOCStatus);
	if (sc_status & MPI2_IOCSTATUS_FLAG_LOG_INFO_AVAILABLE)
		FUNC2(sc, FUNC1(mpi_reply->IOCLogInfo));
}