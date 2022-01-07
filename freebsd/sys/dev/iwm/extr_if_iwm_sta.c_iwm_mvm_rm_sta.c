
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct iwm_softc {int dummy; } ;
struct ieee80211vap {int dummy; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_4__ {int trans; } ;
struct TYPE_3__ {int tfd_queue_msk; } ;


 int FALSE ;
 int IWM_CMD_SYNC ;
 int IWM_VAP (struct ieee80211vap*) ;
 int TRUE ;
 int WME_NUM_AC ;
 int htole32 (int) ;
 int iwl_trans_wait_tx_queue_empty (int ,int ) ;
 int* iwm_mvm_ac_to_tx_fifo ;
 int iwm_mvm_drain_sta (struct iwm_softc*,int ,int ) ;
 int iwm_mvm_flush_tx_path (struct iwm_softc*,int ,int ) ;
 int iwm_mvm_rm_sta_common (struct iwm_softc*) ;
 TYPE_2__* mvm ;
 TYPE_1__* mvm_sta ;

int
iwm_mvm_rm_sta(struct iwm_softc *sc, struct ieee80211vap *vap,
 boolean_t is_assoc)
{
 uint32_t tfd_queue_msk = 0;
 int ret;
 int ac;

 ret = iwm_mvm_drain_sta(sc, IWM_VAP(vap), TRUE);
 if (ret)
  return ret;
 for (ac = 0; ac < WME_NUM_AC; ac++) {
  tfd_queue_msk |= htole32(1 << iwm_mvm_ac_to_tx_fifo[ac]);
 }
 ret = iwm_mvm_flush_tx_path(sc, tfd_queue_msk, IWM_CMD_SYNC);
 if (ret)
  return ret;






 ret = iwm_mvm_drain_sta(sc, IWM_VAP(vap), FALSE);


 if (is_assoc)
  return ret;



 ret = iwm_mvm_rm_sta_common(sc);

 return ret;
}
