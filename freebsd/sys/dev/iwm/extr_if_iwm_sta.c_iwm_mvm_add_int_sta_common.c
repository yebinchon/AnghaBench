
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct iwm_softc {int sc_dev; TYPE_1__* cfg; } ;
struct iwm_mvm_add_sta_cmd {scalar_t__ sta_id; int addr; int tid_disable_tx; void* tfd_queue_msk; int station_type; void* mac_id_n_color; } ;
struct iwm_int_sta {scalar_t__ sta_id; int tfd_queue_msk; } ;
typedef int cmd ;
struct TYPE_2__ {scalar_t__ mqrx_supported; } ;


 int EIO ;
 int IEEE80211_ADDR_COPY (int ,int const*) ;
 int IWM_ADD_STA ;
 int IWM_ADD_STA_STATUS_MASK ;

 scalar_t__ IWM_AUX_STA_ID ;
 int IWM_DEBUG_NODE ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*) ;
 int IWM_FW_CMD_ID_AND_COLOR (int ,int ) ;
 int IWM_STA_AUX_ACTIVITY ;
 int device_printf (int ,char*,int) ;
 int htole16 (int) ;
 void* htole32 (int ) ;
 int iwm_mvm_add_sta_cmd_size (struct iwm_softc*) ;
 int iwm_mvm_send_cmd_pdu_status (struct iwm_softc*,int ,int ,struct iwm_mvm_add_sta_cmd*,int*) ;
 int memset (struct iwm_mvm_add_sta_cmd*,int ,int) ;

__attribute__((used)) static int
iwm_mvm_add_int_sta_common(struct iwm_softc *sc, struct iwm_int_sta *sta,
    const uint8_t *addr, uint16_t mac_id, uint16_t color)
{
 struct iwm_mvm_add_sta_cmd cmd;
 int ret;
 uint32_t status;

 memset(&cmd, 0, sizeof(cmd));
 cmd.sta_id = sta->sta_id;
 cmd.mac_id_n_color = htole32(IWM_FW_CMD_ID_AND_COLOR(mac_id, color));
 if (sta->sta_id == IWM_AUX_STA_ID && sc->cfg->mqrx_supported)
  cmd.station_type = IWM_STA_AUX_ACTIVITY;

 cmd.tfd_queue_msk = htole32(sta->tfd_queue_msk);
 cmd.tid_disable_tx = htole16(0xffff);

 if (addr)
  IEEE80211_ADDR_COPY(cmd.addr, addr);

 ret = iwm_mvm_send_cmd_pdu_status(sc, IWM_ADD_STA,
       iwm_mvm_add_sta_cmd_size(sc),
       &cmd, &status);
 if (ret)
  return ret;

 switch (status & IWM_ADD_STA_STATUS_MASK) {
 case 128:
  IWM_DPRINTF(sc, IWM_DEBUG_NODE, "Internal station added.\n");
  return 0;
 default:
  ret = EIO;
  device_printf(sc->sc_dev,
      "Add internal station failed, status=0x%x\n", status);
  break;
 }
 return ret;
}
