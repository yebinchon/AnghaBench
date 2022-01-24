#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct mpt_softc {int dummy; } ;
struct TYPE_4__ {int MaxBuses; int /*<<< orphan*/  MsgContext; void* ReplyFrameSize; void* HeaderVersion; void* MsgVersion; scalar_t__ MaxDevices; int /*<<< orphan*/  Function; int /*<<< orphan*/  WhoInit; } ;
typedef  int /*<<< orphan*/  MSG_IOC_INIT_REPLY ;
typedef  TYPE_1__ MSG_IOC_INIT ;

/* Variables and functions */
 int /*<<< orphan*/  MPI_FUNCTION_IOC_INIT ; 
 int /*<<< orphan*/  MPI_HEADER_VERSION ; 
 int /*<<< orphan*/  MPI_VERSION ; 
 int /*<<< orphan*/  MPT_REPLY_HANDLER_HANDSHAKE ; 
 int /*<<< orphan*/  MPT_REPLY_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mpt_softc*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mpt_softc*,int,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(struct mpt_softc *mpt, uint32_t who)
{
	int error = 0;
	MSG_IOC_INIT init;
	MSG_IOC_INIT_REPLY reply;

	FUNC2(&init, 0, sizeof init);
	init.WhoInit = who;
	init.Function = MPI_FUNCTION_IOC_INIT;
	init.MaxDevices = 0;	/* at least 256 devices per bus */
	init.MaxBuses = 16;	/* at least 16 buses */

	init.MsgVersion = FUNC0(MPI_VERSION);
	init.HeaderVersion = FUNC0(MPI_HEADER_VERSION);
	init.ReplyFrameSize = FUNC0(MPT_REPLY_SIZE);
	init.MsgContext = FUNC1(MPT_REPLY_HANDLER_HANDSHAKE);

	if ((error = FUNC4(mpt, sizeof init, &init)) != 0) {
		return(error);
	}

	error = FUNC3(mpt, sizeof reply, &reply);
	return (error);
}