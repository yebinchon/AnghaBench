
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct iwm_vap {int color; int id; } ;
struct iwm_softc {int sc_dev; } ;
struct TYPE_2__ {int ni_bssid; int ni_vap; } ;
struct iwm_node {TYPE_1__ in_ni; } ;
struct iwm_mvm_add_sta_cmd {int add_modify; int station_flags; int addr; int tfd_queue_msk; int tid_disable_tx; int station_flags_msk; int mac_id_n_color; int sta_id; } ;
typedef scalar_t__ boolean_t ;


 int EIO ;
 int IEEE80211_ADDR_COPY (int *,int ) ;
 int IWM_ADD_STA ;
 int IWM_ADD_STA_STATUS_MASK ;

 int IWM_DEBUG_NODE ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*) ;
 int IWM_FW_CMD_ID_AND_COLOR (int ,int ) ;
 int IWM_STATION_ID ;
 int IWM_STA_FLG_AGG_MPDU_DENS_SHIFT ;
 int IWM_STA_FLG_FAT_EN_MSK ;
 int IWM_STA_FLG_MAX_AGG_SIZE_SHIFT ;
 int IWM_STA_FLG_MIMO_EN_MSK ;
 struct iwm_vap* IWM_VAP (int ) ;
 int WME_NUM_AC ;
 int device_printf (int ,char*) ;
 int htole16 (int) ;
 int htole32 (int) ;
 int* iwm_mvm_ac_to_tx_fifo ;
 int iwm_mvm_add_sta_cmd_size (struct iwm_softc*) ;
 int iwm_mvm_send_cmd_pdu_status (struct iwm_softc*,int ,int ,struct iwm_mvm_add_sta_cmd*,int*) ;

int
iwm_mvm_sta_send_to_fw(struct iwm_softc *sc, struct iwm_node *in,
 boolean_t update)
{
 struct iwm_vap *ivp = IWM_VAP(in->in_ni.ni_vap);
 struct iwm_mvm_add_sta_cmd add_sta_cmd = {
  .sta_id = IWM_STATION_ID,
  .mac_id_n_color =
      htole32(IWM_FW_CMD_ID_AND_COLOR(ivp->id, ivp->color)),
  .add_modify = update ? 1 : 0,
  .station_flags_msk = htole32(IWM_STA_FLG_FAT_EN_MSK |
          IWM_STA_FLG_MIMO_EN_MSK),
  .tid_disable_tx = htole16(0xffff),
 };
 int ret;
 uint32_t status;
 uint32_t agg_size = 0, mpdu_dens = 0;

 if (!update) {
  int ac;
  for (ac = 0; ac < WME_NUM_AC; ac++) {
   add_sta_cmd.tfd_queue_msk |=
       htole32(1 << iwm_mvm_ac_to_tx_fifo[ac]);
  }
  IEEE80211_ADDR_COPY(&add_sta_cmd.addr, in->in_ni.ni_bssid);
 }

 add_sta_cmd.station_flags |=
  htole32(agg_size << IWM_STA_FLG_MAX_AGG_SIZE_SHIFT);
 add_sta_cmd.station_flags |=
  htole32(mpdu_dens << IWM_STA_FLG_AGG_MPDU_DENS_SHIFT);

 status = 128;
 ret = iwm_mvm_send_cmd_pdu_status(sc, IWM_ADD_STA,
       iwm_mvm_add_sta_cmd_size(sc),
       &add_sta_cmd, &status);
 if (ret)
  return ret;

 switch (status & IWM_ADD_STA_STATUS_MASK) {
 case 128:
  IWM_DPRINTF(sc, IWM_DEBUG_NODE, "IWM_ADD_STA PASSED\n");
  break;
 default:
  ret = EIO;
  device_printf(sc->sc_dev, "IWM_ADD_STA failed\n");
  break;
 }

 return ret;
}
