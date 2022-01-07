
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {int iv_flags; scalar_t__ iv_dtim_period; struct ieee80211_node* iv_bss; } ;
struct iwm_vap {int color; int id; struct ieee80211vap iv_vap; } ;
struct iwm_softc {scalar_t__ sc_ps_disabled; } ;
struct iwm_mac_power_cmd {void* tx_data_timeout; void* rx_data_timeout; int flags; int keep_alive_seconds; void* id_and_color; } ;
struct ieee80211_node {int ni_intval; } ;
typedef int boolean_t ;
struct TYPE_2__ {scalar_t__ in_assoc; } ;


 int FALSE ;
 int IEEE80211_F_PMGTON ;
 int IWM_FW_CMD_ID_AND_COLOR (int ,int ) ;
 int IWM_MVM_DEFAULT_PS_RX_DATA_TIMEOUT ;
 int IWM_MVM_DEFAULT_PS_TX_DATA_TIMEOUT ;
 TYPE_1__* IWM_NODE (struct ieee80211_node*) ;
 int IWM_POWER_FLAGS_POWER_MANAGEMENT_ENA_MSK ;
 int IWM_POWER_FLAGS_POWER_SAVE_ENA_MSK ;
 int IWM_POWER_KEEP_ALIVE_PERIOD_SEC ;
 int TRUE ;
 int htole16 (int) ;
 void* htole32 (int ) ;
 int imax (int,int) ;
 int iwm_mvm_power_config_skip_dtim (struct iwm_softc*,struct iwm_mac_power_cmd*) ;
 int roundup (int,int) ;

__attribute__((used)) static void
iwm_mvm_power_build_cmd(struct iwm_softc *sc, struct iwm_vap *ivp,
 struct iwm_mac_power_cmd *cmd)
{
 struct ieee80211vap *vap = &ivp->iv_vap;
 struct ieee80211_node *ni = vap->iv_bss;
 int dtimper, dtimper_msec;
 int keep_alive;
 boolean_t bss_conf_ps = FALSE;

 cmd->id_and_color = htole32(IWM_FW_CMD_ID_AND_COLOR(ivp->id,
     ivp->color));
 dtimper = vap->iv_dtim_period ?: 1;







 dtimper_msec = dtimper * ni->ni_intval;
 keep_alive
     = imax(3 * dtimper_msec, 1000 * IWM_POWER_KEEP_ALIVE_PERIOD_SEC);
 keep_alive = roundup(keep_alive, 1000) / 1000;
 cmd->keep_alive_seconds = htole16(keep_alive);

 if (sc->sc_ps_disabled)
  return;

 cmd->flags |= htole16(IWM_POWER_FLAGS_POWER_SAVE_ENA_MSK);

 if (IWM_NODE(ni)->in_assoc &&
     (vap->iv_flags & IEEE80211_F_PMGTON) != 0) {
  bss_conf_ps = TRUE;
 }
 if (!bss_conf_ps)
  return;

 cmd->flags |= htole16(IWM_POWER_FLAGS_POWER_MANAGEMENT_ENA_MSK);

 iwm_mvm_power_config_skip_dtim(sc, cmd);

 cmd->rx_data_timeout =
  htole32(IWM_MVM_DEFAULT_PS_RX_DATA_TIMEOUT);
 cmd->tx_data_timeout =
  htole32(IWM_MVM_DEFAULT_PS_TX_DATA_TIMEOUT);
}
