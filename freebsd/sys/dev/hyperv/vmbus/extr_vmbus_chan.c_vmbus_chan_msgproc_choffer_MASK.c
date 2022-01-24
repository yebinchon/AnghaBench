#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  task_fn_t ;
struct vmbus_softc {scalar_t__ vmbus_version; int /*<<< orphan*/  vmbus_dev; int /*<<< orphan*/  vmbus_subchtq; int /*<<< orphan*/  vmbus_devtq; int /*<<< orphan*/ * vmbus_tx_evtflags; TYPE_3__* vmbus_mnf2; } ;
struct vmbus_message {scalar_t__ msg_data; } ;
struct vmbus_channel {size_t ch_id; int ch_montrig_mask; unsigned long ch_evtflag_mask; int /*<<< orphan*/  ch_attach_task; int /*<<< orphan*/  ch_mgmt_tq; int /*<<< orphan*/  ch_refs; int /*<<< orphan*/  ch_detach_task; int /*<<< orphan*/ * ch_evtflag; int /*<<< orphan*/ * ch_montrig; int /*<<< orphan*/  ch_txflags; TYPE_1__* ch_monprm; int /*<<< orphan*/  ch_flags; int /*<<< orphan*/  ch_guid_inst; int /*<<< orphan*/  ch_guid_type; int /*<<< orphan*/  ch_subidx; } ;
struct vmbus_chanmsg_choffer {size_t chm_chanid; int chm_flags1; int chm_montrig; int /*<<< orphan*/  chm_connid; int /*<<< orphan*/  chm_chinst; int /*<<< orphan*/  chm_chtype; int /*<<< orphan*/  chm_subidx; } ;
struct TYPE_6__ {TYPE_2__* mnf_trigs; } ;
struct TYPE_5__ {int /*<<< orphan*/  mt_pending; } ;
struct TYPE_4__ {int /*<<< orphan*/  mp_connid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vmbus_channel*) ; 
 int /*<<< orphan*/  VMBUS_CHAN_FLAG_BATCHREAD ; 
 scalar_t__ FUNC1 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  VMBUS_CHAN_TXF_HASMNF ; 
 int VMBUS_CHOFFER_FLAG1_HASMNF ; 
 int /*<<< orphan*/  VMBUS_CONNID_EVENT ; 
 unsigned long VMBUS_EVTFLAG_MASK ; 
 size_t VMBUS_EVTFLAG_SHIFT ; 
 int VMBUS_MONTRIGS_MAX ; 
 int VMBUS_MONTRIG_LEN ; 
 scalar_t__ VMBUS_VERSION_WS2008 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct vmbus_channel*) ; 
 struct vmbus_channel* FUNC7 (struct vmbus_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct vmbus_channel*) ; 
 int /*<<< orphan*/ * vmbus_prichan_attach_task ; 
 int /*<<< orphan*/ * vmbus_prichan_detach_task ; 
 int /*<<< orphan*/ * vmbus_subchan_attach_task ; 
 int /*<<< orphan*/ * vmbus_subchan_detach_task ; 

__attribute__((used)) static void
FUNC9(struct vmbus_softc *sc,
    const struct vmbus_message *msg)
{
	const struct vmbus_chanmsg_choffer *offer;
	struct vmbus_channel *chan;
	task_fn_t *detach_fn, *attach_fn;
	int error;

	offer = (const struct vmbus_chanmsg_choffer *)msg->msg_data;

	chan = FUNC7(sc);
	if (chan == NULL) {
		FUNC3(sc->vmbus_dev, "allocate chan%u failed\n",
		    offer->chm_chanid);
		return;
	}

	chan->ch_id = offer->chm_chanid;
	chan->ch_subidx = offer->chm_subidx;
	chan->ch_guid_type = offer->chm_chtype;
	chan->ch_guid_inst = offer->chm_chinst;

	/* Batch reading is on by default */
	chan->ch_flags |= VMBUS_CHAN_FLAG_BATCHREAD;

	chan->ch_monprm->mp_connid = VMBUS_CONNID_EVENT;
	if (sc->vmbus_version != VMBUS_VERSION_WS2008)
		chan->ch_monprm->mp_connid = offer->chm_connid;

	if (offer->chm_flags1 & VMBUS_CHOFFER_FLAG1_HASMNF) {
		int trig_idx;

		/*
		 * Setup MNF stuffs.
		 */
		chan->ch_txflags |= VMBUS_CHAN_TXF_HASMNF;

		trig_idx = offer->chm_montrig / VMBUS_MONTRIG_LEN;
		if (trig_idx >= VMBUS_MONTRIGS_MAX)
			FUNC4("invalid monitor trigger %u", offer->chm_montrig);
		chan->ch_montrig =
		    &sc->vmbus_mnf2->mnf_trigs[trig_idx].mt_pending;

		chan->ch_montrig_mask =
		    1 << (offer->chm_montrig % VMBUS_MONTRIG_LEN);
	}

	/*
	 * Setup event flag.
	 */
	chan->ch_evtflag =
	    &sc->vmbus_tx_evtflags[chan->ch_id >> VMBUS_EVTFLAG_SHIFT];
	chan->ch_evtflag_mask = 1UL << (chan->ch_id & VMBUS_EVTFLAG_MASK);

	/*
	 * Setup attach and detach tasks.
	 */
	if (FUNC1(chan)) {
		chan->ch_mgmt_tq = sc->vmbus_devtq;
		attach_fn = vmbus_prichan_attach_task;
		detach_fn = vmbus_prichan_detach_task;
	} else {
		chan->ch_mgmt_tq = sc->vmbus_subchtq;
		attach_fn = vmbus_subchan_attach_task;
		detach_fn = vmbus_subchan_detach_task;
	}
	FUNC0(&chan->ch_attach_task, 0, attach_fn, chan);
	FUNC0(&chan->ch_detach_task, 0, detach_fn, chan);

	error = FUNC6(chan);
	if (error) {
		FUNC3(sc->vmbus_dev, "add chan%u failed: %d\n",
		    chan->ch_id, error);
		FUNC2(&chan->ch_refs, 1);
		FUNC8(chan);
		return;
	}
	FUNC5(chan->ch_mgmt_tq, &chan->ch_attach_task);
}