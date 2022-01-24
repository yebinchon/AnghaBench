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
struct TYPE_3__ {int ChainOffset; int MsgFlags; int MsgContext; int /*<<< orphan*/  Function; } ;
typedef  TYPE_1__ MSG_REQUEST_HEADER ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(MSG_REQUEST_HEADER *req)
{

	FUNC1("%s @ %p\n", FUNC0(req->Function), req);
	FUNC1("\tChain Offset  0x%02x\n", req->ChainOffset);
	FUNC1("\tMsgFlags      0x%02x\n", req->MsgFlags);
	FUNC1("\tMsgContext    0x%08x\n", req->MsgContext);
}