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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  last_halt_chanerr; int /*<<< orphan*/  channel_halts; int /*<<< orphan*/  descriptors_error; int /*<<< orphan*/  descriptors_submitted; int /*<<< orphan*/  descriptors_processed; int /*<<< orphan*/  interrupts; } ;
struct ioat_softc {TYPE_1__ stats; int /*<<< orphan*/  cached_intrdelay; int /*<<< orphan*/  is_submitter_processing; int /*<<< orphan*/ * comp_update; int /*<<< orphan*/  tail; int /*<<< orphan*/  head; int /*<<< orphan*/  ring_size_order; int /*<<< orphan*/  intrdelay_max; int /*<<< orphan*/  intrdelay_supported; int /*<<< orphan*/  max_xfer_size; int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLFLAG_STATS ; 
 int CTLTYPE_INT ; 
 int CTLTYPE_STRING ; 
 struct ioat_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid* FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct ioat_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC8 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC9 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_handle_chansts ; 
 int /*<<< orphan*/  sysctl_handle_dpi ; 
 int /*<<< orphan*/  sysctl_handle_reset ; 

__attribute__((used)) static void
FUNC11(device_t device)
{
	struct sysctl_oid_list *par, *statpar, *state, *hammer;
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid *tree, *tmp;
	struct ioat_softc *ioat;

	ioat = FUNC0(device);
	ctx = FUNC9(device);
	tree = FUNC10(device);
	par = FUNC8(tree);

	FUNC1(ctx, par, OID_AUTO, "version", CTLFLAG_RD,
	    &ioat->version, 0, "HW version (0xMM form)");
	FUNC6(ctx, par, OID_AUTO, "max_xfer_size", CTLFLAG_RD,
	    &ioat->max_xfer_size, 0, "HW maximum transfer size");
	FUNC1(ctx, par, OID_AUTO, "intrdelay_supported", CTLFLAG_RD,
	    &ioat->intrdelay_supported, 0, "Is INTRDELAY supported");
	FUNC4(ctx, par, OID_AUTO, "intrdelay_max", CTLFLAG_RD,
	    &ioat->intrdelay_max, 0,
	    "Maximum configurable INTRDELAY on this channel (microseconds)");

	tmp = FUNC2(ctx, par, OID_AUTO, "state", CTLFLAG_RD, NULL,
	    "IOAT channel internal state");
	state = FUNC8(tmp);

	FUNC6(ctx, state, OID_AUTO, "ring_size_order", CTLFLAG_RD,
	    &ioat->ring_size_order, 0, "SW descriptor ring size order");
	FUNC6(ctx, state, OID_AUTO, "head", CTLFLAG_RD, &ioat->head,
	    0, "SW descriptor head pointer index");
	FUNC6(ctx, state, OID_AUTO, "tail", CTLFLAG_RD, &ioat->tail,
	    0, "SW descriptor tail pointer index");

	FUNC7(ctx, state, OID_AUTO, "last_completion", CTLFLAG_RD,
	    ioat->comp_update, "HW addr of last completion");

	FUNC1(ctx, state, OID_AUTO, "is_submitter_processing",
	    CTLFLAG_RD, &ioat->is_submitter_processing, 0,
	    "submitter processing");

	FUNC3(ctx, state, OID_AUTO, "chansts",
	    CTLTYPE_STRING | CTLFLAG_RD, ioat, 0, sysctl_handle_chansts, "A",
	    "String of the channel status");

	FUNC4(ctx, state, OID_AUTO, "intrdelay", CTLFLAG_RD,
	    &ioat->cached_intrdelay, 0,
	    "Current INTRDELAY on this channel (cached, microseconds)");

	tmp = FUNC2(ctx, par, OID_AUTO, "hammer", CTLFLAG_RD, NULL,
	    "Big hammers (mostly for testing)");
	hammer = FUNC8(tmp);

	FUNC3(ctx, hammer, OID_AUTO, "force_hw_reset",
	    CTLTYPE_INT | CTLFLAG_RW, ioat, 0, sysctl_handle_reset, "I",
	    "Set to non-zero to reset the hardware");

	tmp = FUNC2(ctx, par, OID_AUTO, "stats", CTLFLAG_RD, NULL,
	    "IOAT channel statistics");
	statpar = FUNC8(tmp);

	FUNC7(ctx, statpar, OID_AUTO, "interrupts",
	    CTLFLAG_RW | CTLFLAG_STATS, &ioat->stats.interrupts,
	    "Number of interrupts processed on this channel");
	FUNC7(ctx, statpar, OID_AUTO, "descriptors",
	    CTLFLAG_RW | CTLFLAG_STATS, &ioat->stats.descriptors_processed,
	    "Number of descriptors processed on this channel");
	FUNC7(ctx, statpar, OID_AUTO, "submitted",
	    CTLFLAG_RW | CTLFLAG_STATS, &ioat->stats.descriptors_submitted,
	    "Number of descriptors submitted to this channel");
	FUNC7(ctx, statpar, OID_AUTO, "errored",
	    CTLFLAG_RW | CTLFLAG_STATS, &ioat->stats.descriptors_error,
	    "Number of descriptors failed by channel errors");
	FUNC5(ctx, statpar, OID_AUTO, "halts",
	    CTLFLAG_RW | CTLFLAG_STATS, &ioat->stats.channel_halts, 0,
	    "Number of times the channel has halted");
	FUNC5(ctx, statpar, OID_AUTO, "last_halt_chanerr",
	    CTLFLAG_RW | CTLFLAG_STATS, &ioat->stats.last_halt_chanerr, 0,
	    "The raw CHANERR when the channel was last halted");

	FUNC3(ctx, statpar, OID_AUTO, "desc_per_interrupt",
	    CTLTYPE_STRING | CTLFLAG_RD, ioat, 0, sysctl_handle_dpi, "A",
	    "Descriptors per interrupt");
}