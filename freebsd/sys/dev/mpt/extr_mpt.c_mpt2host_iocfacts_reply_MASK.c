#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  Word; } ;
struct TYPE_6__ {int /*<<< orphan*/  HostPageBufferSGE; } ;
typedef  TYPE_1__ MSG_IOC_FACTS_REPLY ;

/* Variables and functions */
 int /*<<< orphan*/  CurReplyFrameSize ; 
 int /*<<< orphan*/  CurrentHostMfaHighAddr ; 
 int /*<<< orphan*/  CurrentSenseBufferHighAddr ; 
 int /*<<< orphan*/  FWImageSize ; 
 TYPE_5__ FWVersion ; 
 int /*<<< orphan*/  GlobalCredits ; 
 int /*<<< orphan*/  HeaderVersion ; 
 int /*<<< orphan*/  HighPriorityQueueDepth ; 
 int /*<<< orphan*/  IOCCapabilities ; 
 int /*<<< orphan*/  IOCExceptions ; 
 int /*<<< orphan*/  IOCLogInfo ; 
 int /*<<< orphan*/  IOCStatus ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MsgContext ; 
 int /*<<< orphan*/  MsgVersion ; 
 int /*<<< orphan*/  ProductID ; 
 int /*<<< orphan*/  ReplyFifoHostSignalingAddr ; 
 int /*<<< orphan*/  ReplyQueueDepth ; 
 int /*<<< orphan*/  RequestFrameSize ; 
 int /*<<< orphan*/  Reserved2 ; 
 int /*<<< orphan*/  Reserved_0101_FWVersion ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(MSG_IOC_FACTS_REPLY *rp)
{

	FUNC0(rp, MsgVersion);
	FUNC0(rp, HeaderVersion);
	FUNC1(rp, MsgContext);
	FUNC0(rp, IOCExceptions);
	FUNC0(rp, IOCStatus);
	FUNC1(rp, IOCLogInfo);
	FUNC0(rp, ReplyQueueDepth);
	FUNC0(rp, RequestFrameSize);
	FUNC0(rp, Reserved_0101_FWVersion);
	FUNC0(rp, ProductID);
	FUNC1(rp, CurrentHostMfaHighAddr);
	FUNC0(rp, GlobalCredits);
	FUNC1(rp, CurrentSenseBufferHighAddr);
	FUNC0(rp, CurReplyFrameSize);
	FUNC1(rp, FWImageSize);
	FUNC1(rp, IOCCapabilities);
	FUNC1(rp, FWVersion.Word);
	FUNC0(rp, HighPriorityQueueDepth);
	FUNC0(rp, Reserved2);
	FUNC2(&rp->HostPageBufferSGE);
	FUNC1(rp, ReplyFifoHostSignalingAddr);
}