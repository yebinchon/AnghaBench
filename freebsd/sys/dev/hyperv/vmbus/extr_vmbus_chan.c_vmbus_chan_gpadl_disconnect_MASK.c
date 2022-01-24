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
typedef  scalar_t__ uint32_t ;
struct vmbus_softc {int dummy; } ;
struct vmbus_msghc {int dummy; } ;
struct vmbus_channel {int /*<<< orphan*/  ch_id; struct vmbus_softc* ch_vmbus; } ;
struct TYPE_2__ {int /*<<< orphan*/  chm_type; } ;
struct vmbus_chanmsg_gpadl_disconn {scalar_t__ chm_gpadl; int /*<<< orphan*/  chm_chanid; TYPE_1__ chm_hdr; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  VMBUS_CHANMSG_TYPE_GPADL_DISCONN ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_channel*,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (struct vmbus_channel*,int) ; 
 struct vmbus_chanmsg_gpadl_disconn* FUNC3 (struct vmbus_msghc*) ; 
 int FUNC4 (struct vmbus_softc*,struct vmbus_msghc*) ; 
 struct vmbus_msghc* FUNC5 (struct vmbus_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vmbus_softc*,struct vmbus_msghc*) ; 
 int /*<<< orphan*/  FUNC7 (struct vmbus_softc*,struct vmbus_msghc*) ; 

int
FUNC8(struct vmbus_channel *chan, uint32_t gpadl)
{
	struct vmbus_softc *sc = chan->ch_vmbus;
	struct vmbus_msghc *mh;
	struct vmbus_chanmsg_gpadl_disconn *req;
	int error;

	FUNC0(gpadl != 0, ("GPADL is zero"));

	mh = FUNC5(sc, sizeof(*req));
	if (mh == NULL) {
		FUNC1(chan,
		    "can not get msg hypercall for gpadl_disconn(chan%u)\n",
		    chan->ch_id);
		return (EBUSY);
	}

	req = FUNC3(mh);
	req->chm_hdr.chm_type = VMBUS_CHANMSG_TYPE_GPADL_DISCONN;
	req->chm_chanid = chan->ch_id;
	req->chm_gpadl = gpadl;

	error = FUNC4(sc, mh);
	if (error) {
		FUNC6(sc, mh);

		if (FUNC2(chan, true)) {
			/*
			 * Error is benign; this channel is revoked,
			 * so this GPADL will not be touched anymore.
			 */
			FUNC1(chan,
			    "gpadl_disconn(revoked chan%u) msg hypercall "
			    "exec failed: %d\n", chan->ch_id, error);
			return (0);
		}
		FUNC1(chan,
		    "gpadl_disconn(chan%u) msg hypercall exec failed: %d\n",
		    chan->ch_id, error);
		return (error);
	}

	FUNC7(sc, mh);
	/* Discard result; no useful information */
	FUNC6(sc, mh);

	return (0);
}