
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ixgbe_hw_stats {int crcerrs; int rlec; int gotc; int gptc; int mptc; int ptc64; int mprc; int gorc; int gprc; int fcoedwtc; int fcoedwrc; int fcoeptc; int fcoeprc; int fcoerpdc; int fclast; int fccrc; int xec; int bptc; int ptc1522; int ptc1023; int ptc511; int ptc255; int ptc127; int tpt; int tpr; int mngptc; int mngpdc; int mngprc; int rjc; int roc; int rfc; int ruc; int lxofftxc; int lxontxc; int prc1522; int prc1023; int prc511; int prc255; int prc127; int prc64; int bprc; int tor; int lxoffrxc; int lxonrxc; int mrfc; int mlfc; int * qprdc; int * qptc; int * qprc; int * mpc; int mspdc; int errbc; int illerrc; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct TYPE_4__ {struct ixgbe_hw_stats pf; } ;
struct adapter {TYPE_3__* shared; TYPE_1__ stats; struct ixgbe_hw hw; } ;
struct TYPE_6__ {int isc_pause_frames; } ;


 int ETHER_MIN_LEN ;
 int IXGBE_BPRC ;
 int IXGBE_BPTC ;
 int IXGBE_CRCERRS ;
 int IXGBE_ERRBC ;
 int IXGBE_FCCRC ;
 int IXGBE_FCLAST ;
 int IXGBE_FCOEDWRC ;
 int IXGBE_FCOEDWTC ;
 int IXGBE_FCOEPRC ;
 int IXGBE_FCOEPTC ;
 int IXGBE_FCOERPDC ;
 int IXGBE_GORCH ;
 int IXGBE_GORCL ;
 int IXGBE_GOTCH ;
 int IXGBE_GOTCL ;
 int IXGBE_GPRC ;
 int IXGBE_GPTC ;
 int IXGBE_ILLERRC ;
 int IXGBE_LXOFFRXC ;
 int IXGBE_LXOFFRXCNT ;
 int IXGBE_LXOFFTXC ;
 int IXGBE_LXONRXC ;
 int IXGBE_LXONRXCNT ;
 int IXGBE_LXONTXC ;
 int IXGBE_MLFC ;
 int IXGBE_MNGPDC ;
 int IXGBE_MNGPRC ;
 int IXGBE_MNGPTC ;
 int IXGBE_MPC (int ) ;
 int IXGBE_MPRC ;
 int IXGBE_MPTC ;
 int IXGBE_MRFC ;
 int IXGBE_MSPDC ;
 int IXGBE_PRC1023 ;
 int IXGBE_PRC127 ;
 int IXGBE_PRC1522 ;
 int IXGBE_PRC255 ;
 int IXGBE_PRC511 ;
 int IXGBE_PRC64 ;
 int IXGBE_PTC1023 ;
 int IXGBE_PTC127 ;
 int IXGBE_PTC1522 ;
 int IXGBE_PTC255 ;
 int IXGBE_PTC511 ;
 int IXGBE_PTC64 ;
 int IXGBE_QPRC (int) ;
 int IXGBE_QPRDC (int) ;
 int IXGBE_QPTC (int) ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RFC ;
 int IXGBE_RJC ;
 int IXGBE_RLEC ;
 int IXGBE_ROC ;
 int IXGBE_RUC ;
 int IXGBE_SET_COLLISIONS (struct adapter*,int ) ;
 int IXGBE_SET_IBYTES (struct adapter*,int ) ;
 int IXGBE_SET_IERRORS (struct adapter*,int) ;
 int IXGBE_SET_IMCASTS (struct adapter*,int ) ;
 int IXGBE_SET_IPACKETS (struct adapter*,int ) ;
 int IXGBE_SET_IQDROPS (struct adapter*,int) ;
 int IXGBE_SET_OBYTES (struct adapter*,int) ;
 int IXGBE_SET_OMCASTS (struct adapter*,int) ;
 int IXGBE_SET_OPACKETS (struct adapter*,int) ;
 int IXGBE_TORH ;
 int IXGBE_TORL ;
 int IXGBE_TPR ;
 int IXGBE_TPT ;
 int IXGBE_XEC ;
 scalar_t__ ixgbe_mac_82598EB ;

__attribute__((used)) static void
ixgbe_update_stats_counters(struct adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct ixgbe_hw_stats *stats = &adapter->stats.pf;
 u32 missed_rx = 0, bprc, lxon, lxoff, total;
 u32 lxoffrxc;
 u64 total_missed_rx = 0;

 stats->crcerrs += IXGBE_READ_REG(hw, IXGBE_CRCERRS);
 stats->illerrc += IXGBE_READ_REG(hw, IXGBE_ILLERRC);
 stats->errbc += IXGBE_READ_REG(hw, IXGBE_ERRBC);
 stats->mspdc += IXGBE_READ_REG(hw, IXGBE_MSPDC);
 stats->mpc[0] += IXGBE_READ_REG(hw, IXGBE_MPC(0));

 for (int i = 0; i < 16; i++) {
  stats->qprc[i] += IXGBE_READ_REG(hw, IXGBE_QPRC(i));
  stats->qptc[i] += IXGBE_READ_REG(hw, IXGBE_QPTC(i));
  stats->qprdc[i] += IXGBE_READ_REG(hw, IXGBE_QPRDC(i));
 }
 stats->mlfc += IXGBE_READ_REG(hw, IXGBE_MLFC);
 stats->mrfc += IXGBE_READ_REG(hw, IXGBE_MRFC);
 stats->rlec += IXGBE_READ_REG(hw, IXGBE_RLEC);


 stats->gprc += IXGBE_READ_REG(hw, IXGBE_GPRC);
 stats->gprc -= missed_rx;

 if (hw->mac.type != ixgbe_mac_82598EB) {
  stats->gorc += IXGBE_READ_REG(hw, IXGBE_GORCL) +
      ((u64)IXGBE_READ_REG(hw, IXGBE_GORCH) << 32);
  stats->gotc += IXGBE_READ_REG(hw, IXGBE_GOTCL) +
      ((u64)IXGBE_READ_REG(hw, IXGBE_GOTCH) << 32);
  stats->tor += IXGBE_READ_REG(hw, IXGBE_TORL) +
      ((u64)IXGBE_READ_REG(hw, IXGBE_TORH) << 32);
  stats->lxonrxc += IXGBE_READ_REG(hw, IXGBE_LXONRXCNT);
  lxoffrxc = IXGBE_READ_REG(hw, IXGBE_LXOFFRXCNT);
  stats->lxoffrxc += lxoffrxc;
 } else {
  stats->lxonrxc += IXGBE_READ_REG(hw, IXGBE_LXONRXC);
  lxoffrxc = IXGBE_READ_REG(hw, IXGBE_LXOFFRXC);
  stats->lxoffrxc += lxoffrxc;

  stats->gorc += IXGBE_READ_REG(hw, IXGBE_GORCH);
  stats->gotc += IXGBE_READ_REG(hw, IXGBE_GOTCH);
  stats->tor += IXGBE_READ_REG(hw, IXGBE_TORH);
 }





 if (lxoffrxc)
  adapter->shared->isc_pause_frames = 1;





 bprc = IXGBE_READ_REG(hw, IXGBE_BPRC);
 stats->bprc += bprc;
 stats->mprc += IXGBE_READ_REG(hw, IXGBE_MPRC);
 if (hw->mac.type == ixgbe_mac_82598EB)
  stats->mprc -= bprc;

 stats->prc64 += IXGBE_READ_REG(hw, IXGBE_PRC64);
 stats->prc127 += IXGBE_READ_REG(hw, IXGBE_PRC127);
 stats->prc255 += IXGBE_READ_REG(hw, IXGBE_PRC255);
 stats->prc511 += IXGBE_READ_REG(hw, IXGBE_PRC511);
 stats->prc1023 += IXGBE_READ_REG(hw, IXGBE_PRC1023);
 stats->prc1522 += IXGBE_READ_REG(hw, IXGBE_PRC1522);

 lxon = IXGBE_READ_REG(hw, IXGBE_LXONTXC);
 stats->lxontxc += lxon;
 lxoff = IXGBE_READ_REG(hw, IXGBE_LXOFFTXC);
 stats->lxofftxc += lxoff;
 total = lxon + lxoff;

 stats->gptc += IXGBE_READ_REG(hw, IXGBE_GPTC);
 stats->mptc += IXGBE_READ_REG(hw, IXGBE_MPTC);
 stats->ptc64 += IXGBE_READ_REG(hw, IXGBE_PTC64);
 stats->gptc -= total;
 stats->mptc -= total;
 stats->ptc64 -= total;
 stats->gotc -= total * ETHER_MIN_LEN;

 stats->ruc += IXGBE_READ_REG(hw, IXGBE_RUC);
 stats->rfc += IXGBE_READ_REG(hw, IXGBE_RFC);
 stats->roc += IXGBE_READ_REG(hw, IXGBE_ROC);
 stats->rjc += IXGBE_READ_REG(hw, IXGBE_RJC);
 stats->mngprc += IXGBE_READ_REG(hw, IXGBE_MNGPRC);
 stats->mngpdc += IXGBE_READ_REG(hw, IXGBE_MNGPDC);
 stats->mngptc += IXGBE_READ_REG(hw, IXGBE_MNGPTC);
 stats->tpr += IXGBE_READ_REG(hw, IXGBE_TPR);
 stats->tpt += IXGBE_READ_REG(hw, IXGBE_TPT);
 stats->ptc127 += IXGBE_READ_REG(hw, IXGBE_PTC127);
 stats->ptc255 += IXGBE_READ_REG(hw, IXGBE_PTC255);
 stats->ptc511 += IXGBE_READ_REG(hw, IXGBE_PTC511);
 stats->ptc1023 += IXGBE_READ_REG(hw, IXGBE_PTC1023);
 stats->ptc1522 += IXGBE_READ_REG(hw, IXGBE_PTC1522);
 stats->bptc += IXGBE_READ_REG(hw, IXGBE_BPTC);
 stats->xec += IXGBE_READ_REG(hw, IXGBE_XEC);
 stats->fccrc += IXGBE_READ_REG(hw, IXGBE_FCCRC);
 stats->fclast += IXGBE_READ_REG(hw, IXGBE_FCLAST);

 if (hw->mac.type != ixgbe_mac_82598EB) {
  stats->fcoerpdc += IXGBE_READ_REG(hw, IXGBE_FCOERPDC);
  stats->fcoeprc += IXGBE_READ_REG(hw, IXGBE_FCOEPRC);
  stats->fcoeptc += IXGBE_READ_REG(hw, IXGBE_FCOEPTC);
  stats->fcoedwrc += IXGBE_READ_REG(hw, IXGBE_FCOEDWRC);
  stats->fcoedwtc += IXGBE_READ_REG(hw, IXGBE_FCOEDWTC);
 }


 IXGBE_SET_IPACKETS(adapter, stats->gprc);
 IXGBE_SET_OPACKETS(adapter, stats->gptc);
 IXGBE_SET_IBYTES(adapter, stats->gorc);
 IXGBE_SET_OBYTES(adapter, stats->gotc);
 IXGBE_SET_IMCASTS(adapter, stats->mprc);
 IXGBE_SET_OMCASTS(adapter, stats->mptc);
 IXGBE_SET_COLLISIONS(adapter, 0);
 IXGBE_SET_IQDROPS(adapter, total_missed_rx);
 IXGBE_SET_IERRORS(adapter, stats->crcerrs + stats->rlec);
}
