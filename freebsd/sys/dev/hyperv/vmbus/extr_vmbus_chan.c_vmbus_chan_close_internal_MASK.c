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
typedef  int uint32_t ;
struct vmbus_softc {int dummy; } ;
struct vmbus_msghc {int dummy; } ;
struct vmbus_channel {int ch_stflags; scalar_t__ ch_bufring_gpadl; int /*<<< orphan*/ * ch_bufring; int /*<<< orphan*/  ch_bufring_dma; int /*<<< orphan*/  ch_id; int /*<<< orphan*/ * ch_tq; int /*<<< orphan*/  ch_task; int /*<<< orphan*/  ch_sysctl_ctx; struct vmbus_softc* ch_vmbus; } ;
struct TYPE_2__ {int /*<<< orphan*/  chm_type; } ;
struct vmbus_chanmsg_chclose {int /*<<< orphan*/  chm_chanid; TYPE_1__ chm_hdr; } ;

/* Variables and functions */
 int EISCONN ; 
 int ENXIO ; 
 int /*<<< orphan*/  VMBUS_CHANMSG_TYPE_CHCLOSE ; 
 int VMBUS_CHAN_ST_OPENED ; 
 scalar_t__ FUNC0 (int*,int,int) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vmbus_channel*) ; 
 int FUNC5 (struct vmbus_channel*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC7 (struct vmbus_channel*,char*,int /*<<< orphan*/ ,...) ; 
 struct vmbus_chanmsg_chclose* FUNC8 (struct vmbus_msghc*) ; 
 int FUNC9 (struct vmbus_msghc*) ; 
 struct vmbus_msghc* FUNC10 (struct vmbus_softc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct vmbus_softc*,struct vmbus_msghc*) ; 

__attribute__((used)) static int
FUNC12(struct vmbus_channel *chan)
{
	struct vmbus_softc *sc = chan->ch_vmbus;
	struct vmbus_msghc *mh;
	struct vmbus_chanmsg_chclose *req;
	uint32_t old_stflags;
	int error;

	/*
	 * NOTE:
	 * Sub-channels are closed upon their primary channel closing,
	 * so they can be closed even before they are opened.
	 */
	for (;;) {
		old_stflags = chan->ch_stflags;
		if (FUNC0(&chan->ch_stflags, old_stflags,
		    old_stflags & ~VMBUS_CHAN_ST_OPENED))
			break;
	}
	if ((old_stflags & VMBUS_CHAN_ST_OPENED) == 0) {
		/* Not opened yet; done */
		if (bootverbose) {
			FUNC7(chan, "chan%u not opened\n",
			    chan->ch_id);
		}
		return (0);
	}

	/*
	 * Free this channel's sysctl tree attached to its device's
	 * sysctl tree.
	 */
	FUNC2(&chan->ch_sysctl_ctx);

	/*
	 * Cancel polling, if it is enabled.
	 */
	FUNC6(chan);

	/*
	 * NOTE:
	 * Order is critical.  This channel _must_ be uninstalled first,
	 * else the channel task may be enqueued by the IDT after it has
	 * been drained.
	 */
	FUNC4(chan);
	FUNC3(chan->ch_tq, &chan->ch_task);
	chan->ch_tq = NULL;

	/*
	 * Close this channel.
	 */
	mh = FUNC10(sc, sizeof(*req));
	if (mh == NULL) {
		FUNC7(chan,
		    "can not get msg hypercall for chclose(chan%u)\n",
		    chan->ch_id);
		error = ENXIO;
		goto disconnect;
	}

	req = FUNC8(mh);
	req->chm_hdr.chm_type = VMBUS_CHANMSG_TYPE_CHCLOSE;
	req->chm_chanid = chan->ch_id;

	error = FUNC9(mh);
	FUNC11(sc, mh);

	if (error) {
		FUNC7(chan,
		    "chclose(chan%u) msg hypercall exec failed: %d\n",
		    chan->ch_id, error);
		goto disconnect;
	}

	if (bootverbose)
		FUNC7(chan, "chan%u closed\n", chan->ch_id);

disconnect:
	/*
	 * Disconnect the TX+RX bufrings from this channel.
	 */
	if (chan->ch_bufring_gpadl != 0) {
		int error1;

		error1 = FUNC5(chan,
		    chan->ch_bufring_gpadl);
		if (error1) {
			/*
			 * XXX
			 * The bufring GPADL is still connected; abandon
			 * this bufring, instead of having mysterious
			 * crash or trashed data later on.
			 */
			FUNC7(chan, "chan%u bufring GPADL "
			    "is still connected after close\n", chan->ch_id);
			chan->ch_bufring = NULL;
			/*
			 * Give caller a hint that the bufring GPADL is
			 * still connected.
			 */
			error = EISCONN;
		}
		chan->ch_bufring_gpadl = 0;
	}

	/*
	 * Destroy the TX+RX bufrings.
	 */
	if (chan->ch_bufring != NULL) {
		FUNC1(&chan->ch_bufring_dma, chan->ch_bufring);
		chan->ch_bufring = NULL;
	}
	return (error);
}