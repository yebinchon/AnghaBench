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
struct vmbus_msghc {int /*<<< orphan*/  mh_xact; } ;
struct hypercall_postmsg_in {size_t hc_dsize; int /*<<< orphan*/  hc_msgtype; int /*<<< orphan*/  hc_connid; } ;

/* Variables and functions */
 size_t HYPERCALL_POSTMSGIN_DSIZE_MAX ; 
 int /*<<< orphan*/  HYPERCALL_POSTMSGIN_SIZE ; 
 int /*<<< orphan*/  HYPERV_MSGTYPE_CHANNEL ; 
 int /*<<< orphan*/  VMBUS_CONNID_MESSAGE ; 
 int /*<<< orphan*/  FUNC0 (struct hypercall_postmsg_in*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 struct hypercall_postmsg_in* FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct vmbus_msghc *mh, size_t dsize)
{
	struct hypercall_postmsg_in *inprm;

	if (dsize > HYPERCALL_POSTMSGIN_DSIZE_MAX)
		FUNC1("invalid data size %zu", dsize);

	inprm = FUNC2(mh->mh_xact);
	FUNC0(inprm, 0, HYPERCALL_POSTMSGIN_SIZE);
	inprm->hc_connid = VMBUS_CONNID_MESSAGE;
	inprm->hc_msgtype = HYPERV_MSGTYPE_CHANNEL;
	inprm->hc_dsize = dsize;
}