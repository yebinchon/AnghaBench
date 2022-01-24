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
typedef  int u64 ;
typedef  int u32 ;
struct ixgbe_hw_stats {int crcerrs; int rlec; int gotc; int gptc; int mptc; int ptc64; int /*<<< orphan*/  mprc; int /*<<< orphan*/  gorc; int /*<<< orphan*/  gprc; int /*<<< orphan*/  fcoedwtc; int /*<<< orphan*/  fcoedwrc; int /*<<< orphan*/  fcoeptc; int /*<<< orphan*/  fcoeprc; int /*<<< orphan*/  fcoerpdc; int /*<<< orphan*/  fclast; int /*<<< orphan*/  fccrc; int /*<<< orphan*/  xec; int /*<<< orphan*/  bptc; int /*<<< orphan*/  ptc1522; int /*<<< orphan*/  ptc1023; int /*<<< orphan*/  ptc511; int /*<<< orphan*/  ptc255; int /*<<< orphan*/  ptc127; int /*<<< orphan*/  tpt; int /*<<< orphan*/  tpr; int /*<<< orphan*/  mngptc; int /*<<< orphan*/  mngpdc; int /*<<< orphan*/  mngprc; int /*<<< orphan*/  rjc; int /*<<< orphan*/  roc; int /*<<< orphan*/  rfc; int /*<<< orphan*/  ruc; int /*<<< orphan*/  lxofftxc; int /*<<< orphan*/  lxontxc; int /*<<< orphan*/  prc1522; int /*<<< orphan*/  prc1023; int /*<<< orphan*/  prc511; int /*<<< orphan*/  prc255; int /*<<< orphan*/  prc127; int /*<<< orphan*/  prc64; int /*<<< orphan*/  bprc; int /*<<< orphan*/  tor; int /*<<< orphan*/  lxoffrxc; int /*<<< orphan*/  lxonrxc; int /*<<< orphan*/  mrfc; int /*<<< orphan*/  mlfc; int /*<<< orphan*/ * qprdc; int /*<<< orphan*/ * qptc; int /*<<< orphan*/ * qprc; int /*<<< orphan*/ * mpc; int /*<<< orphan*/  mspdc; int /*<<< orphan*/  errbc; int /*<<< orphan*/  illerrc; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct TYPE_4__ {struct ixgbe_hw_stats pf; } ;
struct adapter {TYPE_3__* shared; TYPE_1__ stats; struct ixgbe_hw hw; } ;
struct TYPE_6__ {int isc_pause_frames; } ;

/* Variables and functions */
 int ETHER_MIN_LEN ; 
 int /*<<< orphan*/  IXGBE_BPRC ; 
 int /*<<< orphan*/  IXGBE_BPTC ; 
 int /*<<< orphan*/  IXGBE_CRCERRS ; 
 int /*<<< orphan*/  IXGBE_ERRBC ; 
 int /*<<< orphan*/  IXGBE_FCCRC ; 
 int /*<<< orphan*/  IXGBE_FCLAST ; 
 int /*<<< orphan*/  IXGBE_FCOEDWRC ; 
 int /*<<< orphan*/  IXGBE_FCOEDWTC ; 
 int /*<<< orphan*/  IXGBE_FCOEPRC ; 
 int /*<<< orphan*/  IXGBE_FCOEPTC ; 
 int /*<<< orphan*/  IXGBE_FCOERPDC ; 
 int /*<<< orphan*/  IXGBE_GORCH ; 
 int /*<<< orphan*/  IXGBE_GORCL ; 
 int /*<<< orphan*/  IXGBE_GOTCH ; 
 int /*<<< orphan*/  IXGBE_GOTCL ; 
 int /*<<< orphan*/  IXGBE_GPRC ; 
 int /*<<< orphan*/  IXGBE_GPTC ; 
 int /*<<< orphan*/  IXGBE_ILLERRC ; 
 int /*<<< orphan*/  IXGBE_LXOFFRXC ; 
 int /*<<< orphan*/  IXGBE_LXOFFRXCNT ; 
 int /*<<< orphan*/  IXGBE_LXOFFTXC ; 
 int /*<<< orphan*/  IXGBE_LXONRXC ; 
 int /*<<< orphan*/  IXGBE_LXONRXCNT ; 
 int /*<<< orphan*/  IXGBE_LXONTXC ; 
 int /*<<< orphan*/  IXGBE_MLFC ; 
 int /*<<< orphan*/  IXGBE_MNGPDC ; 
 int /*<<< orphan*/  IXGBE_MNGPRC ; 
 int /*<<< orphan*/  IXGBE_MNGPTC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_MPRC ; 
 int /*<<< orphan*/  IXGBE_MPTC ; 
 int /*<<< orphan*/  IXGBE_MRFC ; 
 int /*<<< orphan*/  IXGBE_MSPDC ; 
 int /*<<< orphan*/  IXGBE_PRC1023 ; 
 int /*<<< orphan*/  IXGBE_PRC127 ; 
 int /*<<< orphan*/  IXGBE_PRC1522 ; 
 int /*<<< orphan*/  IXGBE_PRC255 ; 
 int /*<<< orphan*/  IXGBE_PRC511 ; 
 int /*<<< orphan*/  IXGBE_PRC64 ; 
 int /*<<< orphan*/  IXGBE_PTC1023 ; 
 int /*<<< orphan*/  IXGBE_PTC127 ; 
 int /*<<< orphan*/  IXGBE_PTC1522 ; 
 int /*<<< orphan*/  IXGBE_PTC255 ; 
 int /*<<< orphan*/  IXGBE_PTC511 ; 
 int /*<<< orphan*/  IXGBE_PTC64 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_RFC ; 
 int /*<<< orphan*/  IXGBE_RJC ; 
 int /*<<< orphan*/  IXGBE_RLEC ; 
 int /*<<< orphan*/  IXGBE_ROC ; 
 int /*<<< orphan*/  IXGBE_RUC ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*,int) ; 
 int /*<<< orphan*/  IXGBE_TORH ; 
 int /*<<< orphan*/  IXGBE_TORL ; 
 int /*<<< orphan*/  IXGBE_TPR ; 
 int /*<<< orphan*/  IXGBE_TPT ; 
 int /*<<< orphan*/  IXGBE_XEC ; 
 scalar_t__ ixgbe_mac_82598EB ; 

__attribute__((used)) static void
FUNC14(struct adapter *adapter)
{
	struct ixgbe_hw       *hw = &adapter->hw;
	struct ixgbe_hw_stats *stats = &adapter->stats.pf;
	u32                   missed_rx = 0, bprc, lxon, lxoff, total;
	u32                   lxoffrxc;
	u64                   total_missed_rx = 0;

	stats->crcerrs += FUNC4(hw, IXGBE_CRCERRS);
	stats->illerrc += FUNC4(hw, IXGBE_ILLERRC);
	stats->errbc += FUNC4(hw, IXGBE_ERRBC);
	stats->mspdc += FUNC4(hw, IXGBE_MSPDC);
	stats->mpc[0] += FUNC4(hw, FUNC0(0));

	for (int i = 0; i < 16; i++) {
		stats->qprc[i] += FUNC4(hw, FUNC1(i));
		stats->qptc[i] += FUNC4(hw, FUNC3(i));
		stats->qprdc[i] += FUNC4(hw, FUNC2(i));
	}
	stats->mlfc += FUNC4(hw, IXGBE_MLFC);
	stats->mrfc += FUNC4(hw, IXGBE_MRFC);
	stats->rlec += FUNC4(hw, IXGBE_RLEC);

	/* Hardware workaround, gprc counts missed packets */
	stats->gprc += FUNC4(hw, IXGBE_GPRC);
	stats->gprc -= missed_rx;

	if (hw->mac.type != ixgbe_mac_82598EB) {
		stats->gorc += FUNC4(hw, IXGBE_GORCL) +
		    ((u64)FUNC4(hw, IXGBE_GORCH) << 32);
		stats->gotc += FUNC4(hw, IXGBE_GOTCL) +
		    ((u64)FUNC4(hw, IXGBE_GOTCH) << 32);
		stats->tor += FUNC4(hw, IXGBE_TORL) +
		    ((u64)FUNC4(hw, IXGBE_TORH) << 32);
		stats->lxonrxc += FUNC4(hw, IXGBE_LXONRXCNT);
		lxoffrxc = FUNC4(hw, IXGBE_LXOFFRXCNT);
		stats->lxoffrxc += lxoffrxc;
	} else {
		stats->lxonrxc += FUNC4(hw, IXGBE_LXONRXC);
		lxoffrxc = FUNC4(hw, IXGBE_LXOFFRXC);
		stats->lxoffrxc += lxoffrxc;
		/* 82598 only has a counter in the high register */
		stats->gorc += FUNC4(hw, IXGBE_GORCH);
		stats->gotc += FUNC4(hw, IXGBE_GOTCH);
		stats->tor += FUNC4(hw, IXGBE_TORH);
	}

	/*
	 * For watchdog management we need to know if we have been paused
	 * during the last interval, so capture that here.
	*/
	if (lxoffrxc)
		adapter->shared->isc_pause_frames = 1;

	/*
	 * Workaround: mprc hardware is incorrectly counting
	 * broadcasts, so for now we subtract those.
	 */
	bprc = FUNC4(hw, IXGBE_BPRC);
	stats->bprc += bprc;
	stats->mprc += FUNC4(hw, IXGBE_MPRC);
	if (hw->mac.type == ixgbe_mac_82598EB)
		stats->mprc -= bprc;

	stats->prc64 += FUNC4(hw, IXGBE_PRC64);
	stats->prc127 += FUNC4(hw, IXGBE_PRC127);
	stats->prc255 += FUNC4(hw, IXGBE_PRC255);
	stats->prc511 += FUNC4(hw, IXGBE_PRC511);
	stats->prc1023 += FUNC4(hw, IXGBE_PRC1023);
	stats->prc1522 += FUNC4(hw, IXGBE_PRC1522);

	lxon = FUNC4(hw, IXGBE_LXONTXC);
	stats->lxontxc += lxon;
	lxoff = FUNC4(hw, IXGBE_LXOFFTXC);
	stats->lxofftxc += lxoff;
	total = lxon + lxoff;

	stats->gptc += FUNC4(hw, IXGBE_GPTC);
	stats->mptc += FUNC4(hw, IXGBE_MPTC);
	stats->ptc64 += FUNC4(hw, IXGBE_PTC64);
	stats->gptc -= total;
	stats->mptc -= total;
	stats->ptc64 -= total;
	stats->gotc -= total * ETHER_MIN_LEN;

	stats->ruc += FUNC4(hw, IXGBE_RUC);
	stats->rfc += FUNC4(hw, IXGBE_RFC);
	stats->roc += FUNC4(hw, IXGBE_ROC);
	stats->rjc += FUNC4(hw, IXGBE_RJC);
	stats->mngprc += FUNC4(hw, IXGBE_MNGPRC);
	stats->mngpdc += FUNC4(hw, IXGBE_MNGPDC);
	stats->mngptc += FUNC4(hw, IXGBE_MNGPTC);
	stats->tpr += FUNC4(hw, IXGBE_TPR);
	stats->tpt += FUNC4(hw, IXGBE_TPT);
	stats->ptc127 += FUNC4(hw, IXGBE_PTC127);
	stats->ptc255 += FUNC4(hw, IXGBE_PTC255);
	stats->ptc511 += FUNC4(hw, IXGBE_PTC511);
	stats->ptc1023 += FUNC4(hw, IXGBE_PTC1023);
	stats->ptc1522 += FUNC4(hw, IXGBE_PTC1522);
	stats->bptc += FUNC4(hw, IXGBE_BPTC);
	stats->xec += FUNC4(hw, IXGBE_XEC);
	stats->fccrc += FUNC4(hw, IXGBE_FCCRC);
	stats->fclast += FUNC4(hw, IXGBE_FCLAST);
	/* Only read FCOE on 82599 */
	if (hw->mac.type != ixgbe_mac_82598EB) {
		stats->fcoerpdc += FUNC4(hw, IXGBE_FCOERPDC);
		stats->fcoeprc += FUNC4(hw, IXGBE_FCOEPRC);
		stats->fcoeptc += FUNC4(hw, IXGBE_FCOEPTC);
		stats->fcoedwrc += FUNC4(hw, IXGBE_FCOEDWRC);
		stats->fcoedwtc += FUNC4(hw, IXGBE_FCOEDWTC);
	}

	/* Fill out the OS statistics structure */
	FUNC9(adapter, stats->gprc);
	FUNC13(adapter, stats->gptc);
	FUNC6(adapter, stats->gorc);
	FUNC11(adapter, stats->gotc);
	FUNC8(adapter, stats->mprc);
	FUNC12(adapter, stats->mptc);
	FUNC5(adapter, 0);
	FUNC10(adapter, total_missed_rx);
	FUNC7(adapter, stats->crcerrs + stats->rlec);
}