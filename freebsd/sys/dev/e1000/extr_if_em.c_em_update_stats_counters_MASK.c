#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_9__ {scalar_t__ media_type; } ;
struct TYPE_10__ {TYPE_2__ mac; TYPE_4__ phy; } ;
struct TYPE_8__ {scalar_t__ xoffrxc; scalar_t__ symerrs; scalar_t__ sec; scalar_t__ crcerrs; scalar_t__ mpc; scalar_t__ scc; scalar_t__ ecol; scalar_t__ mcc; scalar_t__ latecol; scalar_t__ colc; scalar_t__ dc; scalar_t__ rlec; scalar_t__ xonrxc; scalar_t__ xontxc; scalar_t__ xofftxc; scalar_t__ fcruc; scalar_t__ prc64; scalar_t__ prc127; scalar_t__ prc255; scalar_t__ prc511; scalar_t__ prc1023; scalar_t__ prc1522; scalar_t__ gprc; scalar_t__ bprc; scalar_t__ mprc; scalar_t__ gptc; scalar_t__ gorc; scalar_t__ gotc; scalar_t__ rnbc; scalar_t__ ruc; scalar_t__ rfc; scalar_t__ roc; scalar_t__ rjc; scalar_t__ tor; scalar_t__ tot; scalar_t__ tpr; scalar_t__ tpt; scalar_t__ ptc64; scalar_t__ ptc127; scalar_t__ ptc255; scalar_t__ ptc511; scalar_t__ ptc1023; scalar_t__ ptc1522; scalar_t__ mptc; scalar_t__ bptc; scalar_t__ iac; scalar_t__ icrxptc; scalar_t__ icrxatc; scalar_t__ ictxptc; scalar_t__ ictxatc; scalar_t__ ictxqec; scalar_t__ ictxqmtc; scalar_t__ icrxdmtc; scalar_t__ icrxoc; scalar_t__ algnerrc; scalar_t__ rxerrc; scalar_t__ tncrs; scalar_t__ cexterr; scalar_t__ tsctc; scalar_t__ tsctfc; } ;
struct adapter {TYPE_5__ hw; TYPE_3__ stats; TYPE_1__* shared; } ;
struct TYPE_6__ {int isc_pause_frames; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_ALGNERRC ; 
 int /*<<< orphan*/  E1000_BPRC ; 
 int /*<<< orphan*/  E1000_BPTC ; 
 int /*<<< orphan*/  E1000_CEXTERR ; 
 int /*<<< orphan*/  E1000_COLC ; 
 int /*<<< orphan*/  E1000_CRCERRS ; 
 int /*<<< orphan*/  E1000_DC ; 
 int /*<<< orphan*/  E1000_ECOL ; 
 int /*<<< orphan*/  E1000_FCRUC ; 
 int /*<<< orphan*/  E1000_GORCH ; 
 int /*<<< orphan*/  E1000_GORCL ; 
 int /*<<< orphan*/  E1000_GOTCH ; 
 int /*<<< orphan*/  E1000_GOTCL ; 
 int /*<<< orphan*/  E1000_GPRC ; 
 int /*<<< orphan*/  E1000_GPTC ; 
 int /*<<< orphan*/  E1000_IAC ; 
 int /*<<< orphan*/  E1000_ICRXATC ; 
 int /*<<< orphan*/  E1000_ICRXDMTC ; 
 int /*<<< orphan*/  E1000_ICRXOC ; 
 int /*<<< orphan*/  E1000_ICRXPTC ; 
 int /*<<< orphan*/  E1000_ICTXATC ; 
 int /*<<< orphan*/  E1000_ICTXPTC ; 
 int /*<<< orphan*/  E1000_ICTXQEC ; 
 int /*<<< orphan*/  E1000_ICTXQMTC ; 
 int /*<<< orphan*/  E1000_LATECOL ; 
 int /*<<< orphan*/  E1000_MCC ; 
 int /*<<< orphan*/  E1000_MPC ; 
 int /*<<< orphan*/  E1000_MPRC ; 
 int /*<<< orphan*/  E1000_MPTC ; 
 int /*<<< orphan*/  E1000_PRC1023 ; 
 int /*<<< orphan*/  E1000_PRC127 ; 
 int /*<<< orphan*/  E1000_PRC1522 ; 
 int /*<<< orphan*/  E1000_PRC255 ; 
 int /*<<< orphan*/  E1000_PRC511 ; 
 int /*<<< orphan*/  E1000_PRC64 ; 
 int /*<<< orphan*/  E1000_PTC1023 ; 
 int /*<<< orphan*/  E1000_PTC127 ; 
 int /*<<< orphan*/  E1000_PTC1522 ; 
 int /*<<< orphan*/  E1000_PTC255 ; 
 int /*<<< orphan*/  E1000_PTC511 ; 
 int /*<<< orphan*/  E1000_PTC64 ; 
 scalar_t__ FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1000_RFC ; 
 int /*<<< orphan*/  E1000_RJC ; 
 int /*<<< orphan*/  E1000_RLEC ; 
 int /*<<< orphan*/  E1000_RNBC ; 
 int /*<<< orphan*/  E1000_ROC ; 
 int /*<<< orphan*/  E1000_RUC ; 
 int /*<<< orphan*/  E1000_RXERRC ; 
 int /*<<< orphan*/  E1000_SCC ; 
 int /*<<< orphan*/  E1000_SEC ; 
 int /*<<< orphan*/  E1000_STATUS ; 
 scalar_t__ E1000_STATUS_LU ; 
 int /*<<< orphan*/  E1000_SYMERRS ; 
 int /*<<< orphan*/  E1000_TNCRS ; 
 int /*<<< orphan*/  E1000_TORH ; 
 int /*<<< orphan*/  E1000_TOTH ; 
 int /*<<< orphan*/  E1000_TPR ; 
 int /*<<< orphan*/  E1000_TPT ; 
 int /*<<< orphan*/  E1000_TSCTC ; 
 int /*<<< orphan*/  E1000_TSCTFC ; 
 int /*<<< orphan*/  E1000_XOFFRXC ; 
 int /*<<< orphan*/  E1000_XOFFTXC ; 
 int /*<<< orphan*/  E1000_XONRXC ; 
 int /*<<< orphan*/  E1000_XONTXC ; 
 scalar_t__ e1000_82543 ; 
 scalar_t__ e1000_media_type_copper ; 

__attribute__((used)) static void
FUNC1(struct adapter *adapter)
{
	u64 prev_xoffrxc = adapter->stats.xoffrxc;

	if(adapter->hw.phy.media_type == e1000_media_type_copper ||
	   (FUNC0(&adapter->hw, E1000_STATUS) & E1000_STATUS_LU)) {
		adapter->stats.symerrs += FUNC0(&adapter->hw, E1000_SYMERRS);
		adapter->stats.sec += FUNC0(&adapter->hw, E1000_SEC);
	}
	adapter->stats.crcerrs += FUNC0(&adapter->hw, E1000_CRCERRS);
	adapter->stats.mpc += FUNC0(&adapter->hw, E1000_MPC);
	adapter->stats.scc += FUNC0(&adapter->hw, E1000_SCC);
	adapter->stats.ecol += FUNC0(&adapter->hw, E1000_ECOL);

	adapter->stats.mcc += FUNC0(&adapter->hw, E1000_MCC);
	adapter->stats.latecol += FUNC0(&adapter->hw, E1000_LATECOL);
	adapter->stats.colc += FUNC0(&adapter->hw, E1000_COLC);
	adapter->stats.dc += FUNC0(&adapter->hw, E1000_DC);
	adapter->stats.rlec += FUNC0(&adapter->hw, E1000_RLEC);
	adapter->stats.xonrxc += FUNC0(&adapter->hw, E1000_XONRXC);
	adapter->stats.xontxc += FUNC0(&adapter->hw, E1000_XONTXC);
	adapter->stats.xoffrxc += FUNC0(&adapter->hw, E1000_XOFFRXC);
	/*
	 ** For watchdog management we need to know if we have been
	 ** paused during the last interval, so capture that here.
	*/
	if (adapter->stats.xoffrxc != prev_xoffrxc)
		adapter->shared->isc_pause_frames = 1;
	adapter->stats.xofftxc += FUNC0(&adapter->hw, E1000_XOFFTXC);
	adapter->stats.fcruc += FUNC0(&adapter->hw, E1000_FCRUC);
	adapter->stats.prc64 += FUNC0(&adapter->hw, E1000_PRC64);
	adapter->stats.prc127 += FUNC0(&adapter->hw, E1000_PRC127);
	adapter->stats.prc255 += FUNC0(&adapter->hw, E1000_PRC255);
	adapter->stats.prc511 += FUNC0(&adapter->hw, E1000_PRC511);
	adapter->stats.prc1023 += FUNC0(&adapter->hw, E1000_PRC1023);
	adapter->stats.prc1522 += FUNC0(&adapter->hw, E1000_PRC1522);
	adapter->stats.gprc += FUNC0(&adapter->hw, E1000_GPRC);
	adapter->stats.bprc += FUNC0(&adapter->hw, E1000_BPRC);
	adapter->stats.mprc += FUNC0(&adapter->hw, E1000_MPRC);
	adapter->stats.gptc += FUNC0(&adapter->hw, E1000_GPTC);

	/* For the 64-bit byte counters the low dword must be read first. */
	/* Both registers clear on the read of the high dword */

	adapter->stats.gorc += FUNC0(&adapter->hw, E1000_GORCL) +
	    ((u64)FUNC0(&adapter->hw, E1000_GORCH) << 32);
	adapter->stats.gotc += FUNC0(&adapter->hw, E1000_GOTCL) +
	    ((u64)FUNC0(&adapter->hw, E1000_GOTCH) << 32);

	adapter->stats.rnbc += FUNC0(&adapter->hw, E1000_RNBC);
	adapter->stats.ruc += FUNC0(&adapter->hw, E1000_RUC);
	adapter->stats.rfc += FUNC0(&adapter->hw, E1000_RFC);
	adapter->stats.roc += FUNC0(&adapter->hw, E1000_ROC);
	adapter->stats.rjc += FUNC0(&adapter->hw, E1000_RJC);

	adapter->stats.tor += FUNC0(&adapter->hw, E1000_TORH);
	adapter->stats.tot += FUNC0(&adapter->hw, E1000_TOTH);

	adapter->stats.tpr += FUNC0(&adapter->hw, E1000_TPR);
	adapter->stats.tpt += FUNC0(&adapter->hw, E1000_TPT);
	adapter->stats.ptc64 += FUNC0(&adapter->hw, E1000_PTC64);
	adapter->stats.ptc127 += FUNC0(&adapter->hw, E1000_PTC127);
	adapter->stats.ptc255 += FUNC0(&adapter->hw, E1000_PTC255);
	adapter->stats.ptc511 += FUNC0(&adapter->hw, E1000_PTC511);
	adapter->stats.ptc1023 += FUNC0(&adapter->hw, E1000_PTC1023);
	adapter->stats.ptc1522 += FUNC0(&adapter->hw, E1000_PTC1522);
	adapter->stats.mptc += FUNC0(&adapter->hw, E1000_MPTC);
	adapter->stats.bptc += FUNC0(&adapter->hw, E1000_BPTC);

	/* Interrupt Counts */

	adapter->stats.iac += FUNC0(&adapter->hw, E1000_IAC);
	adapter->stats.icrxptc += FUNC0(&adapter->hw, E1000_ICRXPTC);
	adapter->stats.icrxatc += FUNC0(&adapter->hw, E1000_ICRXATC);
	adapter->stats.ictxptc += FUNC0(&adapter->hw, E1000_ICTXPTC);
	adapter->stats.ictxatc += FUNC0(&adapter->hw, E1000_ICTXATC);
	adapter->stats.ictxqec += FUNC0(&adapter->hw, E1000_ICTXQEC);
	adapter->stats.ictxqmtc += FUNC0(&adapter->hw, E1000_ICTXQMTC);
	adapter->stats.icrxdmtc += FUNC0(&adapter->hw, E1000_ICRXDMTC);
	adapter->stats.icrxoc += FUNC0(&adapter->hw, E1000_ICRXOC);

	if (adapter->hw.mac.type >= e1000_82543) {
		adapter->stats.algnerrc +=
		FUNC0(&adapter->hw, E1000_ALGNERRC);
		adapter->stats.rxerrc +=
		FUNC0(&adapter->hw, E1000_RXERRC);
		adapter->stats.tncrs +=
		FUNC0(&adapter->hw, E1000_TNCRS);
		adapter->stats.cexterr +=
		FUNC0(&adapter->hw, E1000_CEXTERR);
		adapter->stats.tsctc +=
		FUNC0(&adapter->hw, E1000_TSCTC);
		adapter->stats.tsctfc +=
		FUNC0(&adapter->hw, E1000_TSCTFC);
	}
}