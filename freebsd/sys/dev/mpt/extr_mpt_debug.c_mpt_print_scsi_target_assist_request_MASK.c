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
typedef  int uintmax_t ;
struct TYPE_3__ {int StatusCode; int TargetAssistFlags; int QueueTag; int ReplyWord; int RelativeOffset; int DataLength; int /*<<< orphan*/  SGL; int /*<<< orphan*/  LUN; } ;
typedef  TYPE_1__* PTR_MSG_TARGET_ASSIST_REQUEST ;
typedef  int /*<<< orphan*/  MSG_REQUEST_HEADER ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static void
FUNC4(PTR_MSG_TARGET_ASSIST_REQUEST msg)
{

	FUNC2((MSG_REQUEST_HEADER *)msg);
	FUNC3("\tStatusCode    0x%02x\n", msg->StatusCode);
	FUNC3("\tTargetAssist  0x%02x\n", msg->TargetAssistFlags);
	FUNC3("\tQueueTag      0x%04x\n", msg->QueueTag);
	FUNC3("\tReplyWord     0x%08x\n", msg->ReplyWord);
	FUNC3("\tLun           0x%jx\n", (uintmax_t)FUNC0(msg->LUN));
	FUNC3("\tRelativeOff   0x%08x\n", msg->RelativeOffset);
	FUNC3("\tDataLength    0x%08x\n", msg->DataLength);
	FUNC1(msg->SGL, 0);
}