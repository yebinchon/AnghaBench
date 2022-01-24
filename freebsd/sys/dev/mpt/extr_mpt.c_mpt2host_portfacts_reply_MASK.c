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
typedef  int /*<<< orphan*/  MSG_PORT_FACTS_REPLY ;

/* Variables and functions */
 int /*<<< orphan*/  IOCLogInfo ; 
 int /*<<< orphan*/  IOCStatus ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MaxDevices ; 
 int /*<<< orphan*/  MaxLanBuckets ; 
 int /*<<< orphan*/  MaxPersistentIDs ; 
 int /*<<< orphan*/  MaxPostedCmdBuffers ; 
 int /*<<< orphan*/  MsgContext ; 
 int /*<<< orphan*/  PortSCSIID ; 
 int /*<<< orphan*/  ProtocolFlags ; 
 int /*<<< orphan*/  Reserved ; 
 int /*<<< orphan*/  Reserved1 ; 
 int /*<<< orphan*/  Reserved2 ; 
 int /*<<< orphan*/  Reserved4 ; 
 int /*<<< orphan*/  Reserved5 ; 

void
FUNC2(MSG_PORT_FACTS_REPLY *pfp)
{

	FUNC0(pfp, Reserved);
	FUNC0(pfp, Reserved1);
	FUNC1(pfp, MsgContext);
	FUNC0(pfp, Reserved2);
	FUNC0(pfp, IOCStatus);
	FUNC1(pfp, IOCLogInfo);
	FUNC0(pfp, MaxDevices);
	FUNC0(pfp, PortSCSIID);
	FUNC0(pfp, ProtocolFlags);
	FUNC0(pfp, MaxPostedCmdBuffers);
	FUNC0(pfp, MaxPersistentIDs);
	FUNC0(pfp, MaxLanBuckets);
	FUNC0(pfp, Reserved4);
	FUNC1(pfp, Reserved5);
}