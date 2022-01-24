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
typedef  int uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  txbr; } ;
struct TYPE_5__ {int /*<<< orphan*/  rxbr; } ;
struct sysctl_ctx_list {int dummy; } ;
struct vmbus_channel {int ch_id; int ch_subidx; int ch_cpuid; TYPE_3__ ch_txbr; TYPE_2__ ch_rxbr; TYPE_1__* ch_prichan; int /*<<< orphan*/  ch_dev; struct sysctl_ctx_list ch_sysctl_ctx; } ;
struct sysctl_oid {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_4__ {int ch_id; } ;

/* Variables and functions */
 int CTLFLAG_MPSAFE ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct vmbus_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_oid*) ; 
 scalar_t__ FUNC4 (struct vmbus_channel*) ; 
 struct sysctl_oid* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sysctl_ctx_list*) ; 
 int /*<<< orphan*/  FUNC8 (struct sysctl_ctx_list*,struct sysctl_oid*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  vmbus_chan_sysctl_mnf ; 

__attribute__((used)) static void
FUNC9(struct vmbus_channel *chan)
{
	struct sysctl_oid *ch_tree, *chid_tree, *br_tree;
	struct sysctl_ctx_list *ctx;
	uint32_t ch_id;
	char name[16];

	/*
	 * Add sysctl nodes related to this channel to this
	 * channel's sysctl ctx, so that they can be destroyed
	 * independently upon close of this channel, which can
	 * happen even if the device is not detached.
	 */
	ctx = &chan->ch_sysctl_ctx;
	FUNC7(ctx);

	/*
	 * Create dev.NAME.UNIT.channel tree.
	 */
	ch_tree = FUNC0(ctx,
	    FUNC3(FUNC5(chan->ch_dev)),
	    OID_AUTO, "channel", CTLFLAG_RD | CTLFLAG_MPSAFE, 0, "");
	if (ch_tree == NULL)
		return;

	/*
	 * Create dev.NAME.UNIT.channel.CHANID tree.
	 */
	if (FUNC4(chan))
		ch_id = chan->ch_id;
	else
		ch_id = chan->ch_prichan->ch_id;
	FUNC6(name, sizeof(name), "%d", ch_id);
	chid_tree = FUNC0(ctx, FUNC3(ch_tree),
	    OID_AUTO, name, CTLFLAG_RD | CTLFLAG_MPSAFE, 0, "");
	if (chid_tree == NULL)
		return;

	if (!FUNC4(chan)) {
		/*
		 * Create dev.NAME.UNIT.channel.CHANID.sub tree.
		 */
		ch_tree = FUNC0(ctx, FUNC3(chid_tree),
		    OID_AUTO, "sub", CTLFLAG_RD | CTLFLAG_MPSAFE, 0, "");
		if (ch_tree == NULL)
			return;

		/*
		 * Create dev.NAME.UNIT.channel.CHANID.sub.SUBIDX tree.
		 *
		 * NOTE:
		 * chid_tree is changed to this new sysctl tree.
		 */
		FUNC6(name, sizeof(name), "%d", chan->ch_subidx);
		chid_tree = FUNC0(ctx, FUNC3(ch_tree),
		    OID_AUTO, name, CTLFLAG_RD | CTLFLAG_MPSAFE, 0, "");
		if (chid_tree == NULL)
			return;

		FUNC2(ctx, FUNC3(chid_tree), OID_AUTO,
		    "chanid", CTLFLAG_RD, &chan->ch_id, 0, "channel id");
	}

	FUNC2(ctx, FUNC3(chid_tree), OID_AUTO,
	    "cpu", CTLFLAG_RD, &chan->ch_cpuid, 0, "owner CPU id");
	FUNC1(ctx, FUNC3(chid_tree), OID_AUTO,
	    "mnf", CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE,
	    chan, 0, vmbus_chan_sysctl_mnf, "I",
	    "has monitor notification facilities");

	br_tree = FUNC0(ctx, FUNC3(chid_tree), OID_AUTO,
	    "br", CTLFLAG_RD | CTLFLAG_MPSAFE, 0, "");
	if (br_tree != NULL) {
		/*
		 * Create sysctl tree for RX bufring.
		 */
		FUNC8(ctx, br_tree, &chan->ch_rxbr.rxbr, "rx");
		/*
		 * Create sysctl tree for TX bufring.
		 */
		FUNC8(ctx, br_tree, &chan->ch_txbr.txbr, "tx");
	}
}