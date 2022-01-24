#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int Function; } ;
typedef  int /*<<< orphan*/  MSG_SCSI_IO_REPLY ;
typedef  int /*<<< orphan*/  MSG_PORT_ENABLE_REPLY ;
typedef  int /*<<< orphan*/  MSG_IOC_INIT_REPLY ;
typedef  int /*<<< orphan*/  MSG_IOC_FACTS_REPLY ;
typedef  int /*<<< orphan*/  MSG_EVENT_NOTIFY_REPLY ;
typedef  TYPE_1__ MSG_DEFAULT_REPLY ;

/* Variables and functions */
#define  MPI_FUNCTION_EVENT_NOTIFICATION 133 
#define  MPI_FUNCTION_IOC_FACTS 132 
#define  MPI_FUNCTION_IOC_INIT 131 
#define  MPI_FUNCTION_PORT_ENABLE 130 
#define  MPI_FUNCTION_RAID_SCSI_IO_PASSTHROUGH 129 
#define  MPI_FUNCTION_SCSI_IO_REQUEST 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(void *vmsg)
{
	MSG_DEFAULT_REPLY *msg = vmsg;

	switch (msg->Function) {
	case MPI_FUNCTION_EVENT_NOTIFICATION:
		FUNC1((MSG_EVENT_NOTIFY_REPLY *)msg);
		break;
	case MPI_FUNCTION_PORT_ENABLE:
		FUNC0((MSG_PORT_ENABLE_REPLY *)msg);
		break;
	case MPI_FUNCTION_IOC_FACTS:
		FUNC3((MSG_IOC_FACTS_REPLY *)msg);
		break;
	case MPI_FUNCTION_IOC_INIT:
		FUNC2((MSG_IOC_INIT_REPLY *)msg);
		break;
	case MPI_FUNCTION_SCSI_IO_REQUEST:
	case MPI_FUNCTION_RAID_SCSI_IO_PASSTHROUGH:
		FUNC5((MSG_SCSI_IO_REPLY *)msg);
		break;
	default:
		FUNC4((MSG_DEFAULT_REPLY *)msg);
		break;
	}
}