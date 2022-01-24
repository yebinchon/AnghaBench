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
typedef  int /*<<< orphan*/  vmbus_chan_callback_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  task_fn_t ;
struct vmbus_softc {int dummy; } ;
struct vmbus_msghc {int dummy; } ;
struct vmbus_message {scalar_t__ msg_data; } ;
struct vmbus_channel {int ch_flags; scalar_t__ ch_bufring_gpadl; int /*<<< orphan*/  ch_stflags; int /*<<< orphan*/  ch_sysctl_ctx; int /*<<< orphan*/  ch_id; int /*<<< orphan*/  ch_vcpuid; int /*<<< orphan*/  ch_rxbr; int /*<<< orphan*/  ch_txbr; int /*<<< orphan*/  ch_task; int /*<<< orphan*/  ch_cpuid; struct vmbus_softc* ch_vmbus; int /*<<< orphan*/  ch_tq; void* ch_cbarg; int /*<<< orphan*/  ch_cb; } ;
struct vmbus_chanmsg_chopen_resp {int chm_status; } ;
struct TYPE_2__ {int /*<<< orphan*/  chm_type; } ;
struct vmbus_chanmsg_chopen {scalar_t__ chm_gpadl; int chm_txbr_pgcnt; int /*<<< orphan*/  chm_udata; int /*<<< orphan*/  chm_vcpuid; int /*<<< orphan*/  chm_openid; int /*<<< orphan*/  chm_chanid; TYPE_1__ chm_hdr; } ;
struct vmbus_chan_br {int cbr_txsz; int cbr_rxsz; int cbr_paddr; int /*<<< orphan*/ * cbr; } ;

/* Variables and functions */
 int EINVAL ; 
 int EISCONN ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int REVOKE_LINGER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vmbus_channel*) ; 
 int VMBUS_CHANMSG_CHOPEN_UDATA_SIZE ; 
 int /*<<< orphan*/  VMBUS_CHANMSG_TYPE_CHOPEN ; 
 int VMBUS_CHAN_FLAG_BATCHREAD ; 
 int /*<<< orphan*/  VMBUS_CHAN_ST_OPENED ; 
 int /*<<< orphan*/  VMBUS_CHAN_ST_OPENED_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct vmbus_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  event_tq ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct vmbus_channel*) ; 
 int FUNC11 (struct vmbus_channel*,int,int,scalar_t__*) ; 
 int FUNC12 (struct vmbus_channel*,scalar_t__) ; 
 scalar_t__ FUNC13 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC14 (struct vmbus_channel*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC15 (struct vmbus_channel*) ; 
 int /*<<< orphan*/  FUNC16 (struct vmbus_channel*) ; 
 int /*<<< orphan*/ * vmbus_chan_task ; 
 int /*<<< orphan*/ * vmbus_chan_task_nobatch ; 
 int /*<<< orphan*/  FUNC17 (struct vmbus_softc*,struct vmbus_channel*) ; 
 struct vmbus_chanmsg_chopen* FUNC18 (struct vmbus_msghc*) ; 
 int FUNC19 (struct vmbus_softc*,struct vmbus_msghc*) ; 
 int /*<<< orphan*/  FUNC20 (struct vmbus_softc*,struct vmbus_msghc*) ; 
 struct vmbus_msghc* FUNC21 (struct vmbus_softc*,int) ; 
 struct vmbus_message* FUNC22 (struct vmbus_softc*,struct vmbus_msghc*) ; 
 int /*<<< orphan*/  FUNC23 (struct vmbus_softc*,struct vmbus_msghc*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int
FUNC26(struct vmbus_channel *chan, const struct vmbus_chan_br *cbr,
    const void *udata, int udlen, vmbus_chan_callback_t cb, void *cbarg)
{
	struct vmbus_softc *sc = chan->ch_vmbus;
	const struct vmbus_message *msg;
	struct vmbus_chanmsg_chopen *req;
	struct vmbus_msghc *mh;
	uint32_t status;
	int error, txbr_size, rxbr_size;
	task_fn_t *task_fn;
	uint8_t *br;

	if (udlen > VMBUS_CHANMSG_CHOPEN_UDATA_SIZE) {
		FUNC14(chan,
		    "invalid udata len %d for chan%u\n", udlen, chan->ch_id);
		return (EINVAL);
	}

	br = cbr->cbr;
	txbr_size = cbr->cbr_txsz;
	rxbr_size = cbr->cbr_rxsz;
	FUNC0((txbr_size & PAGE_MASK) == 0,
	    ("send bufring size is not multiple page"));
	FUNC0((rxbr_size & PAGE_MASK) == 0,
	    ("recv bufring size is not multiple page"));
	FUNC0((cbr->cbr_paddr & PAGE_MASK) == 0,
	    ("bufring is not page aligned"));

	/*
	 * Zero out the TX/RX bufrings, in case that they were used before.
	 */
	FUNC6(br, 0, txbr_size + rxbr_size);

	if (FUNC4(&chan->ch_stflags,
	    VMBUS_CHAN_ST_OPENED_SHIFT))
		FUNC7("double-open chan%u", chan->ch_id);

	chan->ch_cb = cb;
	chan->ch_cbarg = cbarg;

	FUNC17(sc, chan);

	chan->ch_tq = FUNC2(chan->ch_vmbus, event_tq, chan->ch_cpuid);
	if (chan->ch_flags & VMBUS_CHAN_FLAG_BATCHREAD)
		task_fn = vmbus_chan_task;
	else
		task_fn = vmbus_chan_task_nobatch;
	FUNC1(&chan->ch_task, 0, task_fn, chan);

	/* TX bufring comes first */
	FUNC25(&chan->ch_txbr, br, txbr_size);
	/* RX bufring immediately follows TX bufring */
	FUNC24(&chan->ch_rxbr, br + txbr_size, rxbr_size);

	/* Create sysctl tree for this channel */
	FUNC16(chan);

	/*
	 * Connect the bufrings, both RX and TX, to this channel.
	 */
	error = FUNC11(chan, cbr->cbr_paddr,
	    txbr_size + rxbr_size, &chan->ch_bufring_gpadl);
	if (error) {
		FUNC14(chan,
		    "failed to connect bufring GPADL to chan%u\n", chan->ch_id);
		goto failed;
	}

	/*
	 * Install this channel, before it is opened, but after everything
	 * else has been setup.
	 */
	FUNC15(chan);

	/*
	 * Open channel w/ the bufring GPADL on the target CPU.
	 */
	mh = FUNC21(sc, sizeof(*req));
	if (mh == NULL) {
		FUNC14(chan,
		    "can not get msg hypercall for chopen(chan%u)\n",
		    chan->ch_id);
		error = ENXIO;
		goto failed;
	}

	req = FUNC18(mh);
	req->chm_hdr.chm_type = VMBUS_CHANMSG_TYPE_CHOPEN;
	req->chm_chanid = chan->ch_id;
	req->chm_openid = chan->ch_id;
	req->chm_gpadl = chan->ch_bufring_gpadl;
	req->chm_vcpuid = chan->ch_vcpuid;
	req->chm_txbr_pgcnt = txbr_size >> PAGE_SHIFT;
	if (udlen > 0)
		FUNC5(req->chm_udata, udata, udlen);

	error = FUNC19(sc, mh);
	if (error) {
		FUNC14(chan,
		    "chopen(chan%u) msg hypercall exec failed: %d\n",
		    chan->ch_id, error);
		FUNC23(sc, mh);
		goto failed;
	}

	for (;;) {
		msg = FUNC22(sc, mh);
		if (msg != NULL)
			break;
		if (FUNC13(chan)) {
			int i;

			/*
			 * NOTE:
			 * Hypervisor does _not_ send response CHOPEN to
			 * a revoked channel.
			 */
			FUNC14(chan,
			    "chan%u is revoked, when it is being opened\n",
			    chan->ch_id);

			/*
			 * XXX
			 * Add extra delay before cancel the hypercall
			 * execution; mainly to close any possible
			 * CHRESCIND and CHOPEN_RESP races on the
			 * hypervisor side.
			 */
#define REVOKE_LINGER	100
			for (i = 0; i < REVOKE_LINGER; ++i) {
				msg = FUNC22(sc, mh);
				if (msg != NULL)
					break;
				FUNC8("rchopen", 1);
			}
#undef REVOKE_LINGER
			if (msg == NULL)
				FUNC20(sc, mh);
			break;
		}
		FUNC8("chopen", 1);
	}
	if (msg != NULL) {
		status = ((const struct vmbus_chanmsg_chopen_resp *)
		    msg->msg_data)->chm_status;
	} else {
		/* XXX any non-0 value is ok here. */
		status = 0xff;
	}

	FUNC23(sc, mh);

	if (status == 0) {
		if (bootverbose)
			FUNC14(chan, "chan%u opened\n", chan->ch_id);
		return (0);
	}

	FUNC14(chan, "failed to open chan%u\n", chan->ch_id);
	error = ENXIO;

failed:
	FUNC9(&chan->ch_sysctl_ctx);
	FUNC10(chan);
	if (chan->ch_bufring_gpadl != 0) {
		int error1;

		error1 = FUNC12(chan,
		    chan->ch_bufring_gpadl);
		if (error1) {
			/*
			 * Give caller a hint that the bufring GPADL is still
			 * connected.
			 */
			error = EISCONN;
		}
		chan->ch_bufring_gpadl = 0;
	}
	FUNC3(&chan->ch_stflags, VMBUS_CHAN_ST_OPENED);
	return (error);
}