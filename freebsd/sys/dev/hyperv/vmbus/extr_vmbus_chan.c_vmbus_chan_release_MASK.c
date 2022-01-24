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
struct vmbus_softc {int dummy; } ;
struct vmbus_msghc {int dummy; } ;
struct vmbus_channel {int /*<<< orphan*/  ch_id; struct vmbus_softc* ch_vmbus; } ;
struct TYPE_2__ {int /*<<< orphan*/  chm_type; } ;
struct vmbus_chanmsg_chfree {int /*<<< orphan*/  chm_chanid; TYPE_1__ chm_hdr; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  VMBUS_CHANMSG_TYPE_CHFREE ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (struct vmbus_channel*,char*,int /*<<< orphan*/ ,...) ; 
 struct vmbus_chanmsg_chfree* FUNC1 (struct vmbus_msghc*) ; 
 int FUNC2 (struct vmbus_msghc*) ; 
 struct vmbus_msghc* FUNC3 (struct vmbus_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vmbus_softc*,struct vmbus_msghc*) ; 

__attribute__((used)) static int
FUNC5(struct vmbus_channel *chan)
{
	struct vmbus_softc *sc = chan->ch_vmbus;
	struct vmbus_chanmsg_chfree *req;
	struct vmbus_msghc *mh;
	int error;

	mh = FUNC3(sc, sizeof(*req));
	if (mh == NULL) {
		FUNC0(chan,
		    "can not get msg hypercall for chfree(chan%u)\n",
		    chan->ch_id);
		return (ENXIO);
	}

	req = FUNC1(mh);
	req->chm_hdr.chm_type = VMBUS_CHANMSG_TYPE_CHFREE;
	req->chm_chanid = chan->ch_id;

	error = FUNC2(mh);
	FUNC4(sc, mh);

	if (error) {
		FUNC0(chan,
		    "chfree(chan%u) msg hypercall exec failed: %d\n",
		    chan->ch_id, error);
	} else {
		if (bootverbose)
			FUNC0(chan, "chan%u freed\n", chan->ch_id);
	}
	return (error);
}