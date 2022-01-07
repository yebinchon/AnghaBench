
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_17__ {int n_scan_channels; } ;
struct TYPE_18__ {TYPE_6__ ucode_capa; } ;
struct TYPE_12__ {struct ieee80211_scan_state* ic_scan; } ;
struct iwm_softc {TYPE_7__ sc_fw; TYPE_1__ sc_ic; } ;
struct iwm_scan_req_umac_tail {TYPE_10__* schedule; int preq; TYPE_9__* direct_scan; } ;
struct TYPE_15__ {void* count; scalar_t__ flags; } ;
struct TYPE_16__ {int active_dwell; int passive_dwell; int fragmented_dwell; int extended_dwell; scalar_t__ data; TYPE_4__ channel; void* scan_priority; } ;
struct TYPE_13__ {void* count; scalar_t__ flags; } ;
struct TYPE_14__ {int active_dwell; int passive_dwell; int fragmented_dwell; int adwell_default_n_aps_social; int adwell_default_n_aps; scalar_t__ data; TYPE_2__ channel; void* scan_priority; void* adwell_max_budget; } ;
struct iwm_scan_req_umac {TYPE_5__ v1; TYPE_3__ v7; void* ooc_priority; void* general_flags; } ;
struct iwm_scan_channel_cfg_umac {int dummy; } ;
struct iwm_host_cmd {int* len; void** data; int flags; int id; } ;
struct ieee80211_scan_state {TYPE_8__* ss_ssid; int ss_nssid; } ;
struct TYPE_20__ {void* len; int ssid; int id; } ;
struct TYPE_19__ {int ssid; int len; } ;
struct TYPE_11__ {int iter_count; scalar_t__ interval; } ;


 int ENOMEM ;
 int IEEE80211_ELEMID_SSID ;
 int IEEE80211_NWID_LEN ;
 int IWM_ALWAYS_LONG_GROUP ;
 int IWM_CMD_SYNC ;
 int IWM_DEBUG_SCAN ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*) ;
 size_t IWM_MAX_CMD_PAYLOAD_SIZE ;
 int IWM_PROBE_OPTION_MAX ;
 scalar_t__ IWM_SCAN_CHANNEL_FLAG_CACHE_ADD ;
 scalar_t__ IWM_SCAN_CHANNEL_FLAG_EBS ;
 scalar_t__ IWM_SCAN_CHANNEL_FLAG_EBS_ACCURATE ;
 int IWM_SCAN_PRIORITY_HIGH ;
 int IWM_SCAN_REQ_UMAC ;
 int IWM_UCODE_TLV_API_ADAPTIVE_DWELL ;
 int IWM_UMAC_SCAN_GEN_FLAGS_EXTENDED_DWELL ;
 int IWM_UMAC_SCAN_GEN_FLAGS_ITER_COMPLETE ;
 int IWM_UMAC_SCAN_GEN_FLAGS_PASSIVE ;
 int IWM_UMAC_SCAN_GEN_FLAGS_PASS_ALL ;
 int IWM_UMAC_SCAN_GEN_FLAGS_PRE_CONNECT ;
 int IWM_UMAC_SCAN_GEN_FLAGS_RRM_ENABLED ;
 void* MIN (int ,int ) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int free (struct iwm_scan_req_umac*,int ) ;
 void* htole16 (int) ;
 void* htole32 (int ) ;
 int iwm_cmd_id (int ,int ,int ) ;
 scalar_t__ iwm_fw_has_api (struct iwm_softc*,int ) ;
 int iwm_mvm_fill_probe_req (struct iwm_softc*,int *) ;
 scalar_t__ iwm_mvm_rrm_scan_needed (struct iwm_softc*) ;
 size_t iwm_mvm_scan_size (struct iwm_softc*) ;
 scalar_t__ iwm_mvm_scan_use_ebs (struct iwm_softc*) ;
 void* iwm_mvm_umac_scan_fill_channels (struct iwm_softc*,struct iwm_scan_channel_cfg_umac*,scalar_t__) ;
 int iwm_send_cmd (struct iwm_softc*,struct iwm_host_cmd*) ;
 struct iwm_scan_req_umac* malloc (size_t,int ,int) ;
 int memcpy (int ,int ,void*) ;

int
iwm_mvm_umac_scan(struct iwm_softc *sc)
{
 struct iwm_host_cmd hcmd = {
  .id = iwm_cmd_id(IWM_SCAN_REQ_UMAC, IWM_ALWAYS_LONG_GROUP, 0),
  .len = { 0, },
  .data = { ((void*)0), },
  .flags = IWM_CMD_SYNC,
 };
 struct ieee80211_scan_state *ss = sc->sc_ic.ic_scan;
 struct iwm_scan_req_umac *req;
 struct iwm_scan_req_umac_tail *tail;
 size_t req_len;
 uint16_t general_flags;
 uint8_t channel_flags, i, nssid;
 int ret;

 req_len = iwm_mvm_scan_size(sc);
 if (req_len > IWM_MAX_CMD_PAYLOAD_SIZE)
  return ENOMEM;
 req = malloc(req_len, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (req == ((void*)0))
  return ENOMEM;

 hcmd.len[0] = (uint16_t)req_len;
 hcmd.data[0] = (void *)req;

 IWM_DPRINTF(sc, IWM_DEBUG_SCAN, "Handling ieee80211 scan request\n");

 nssid = MIN(ss->ss_nssid, IWM_PROBE_OPTION_MAX);

 general_flags = IWM_UMAC_SCAN_GEN_FLAGS_PASS_ALL |
     IWM_UMAC_SCAN_GEN_FLAGS_ITER_COMPLETE;
 if (!iwm_fw_has_api(sc, IWM_UCODE_TLV_API_ADAPTIVE_DWELL))
  general_flags |= IWM_UMAC_SCAN_GEN_FLAGS_EXTENDED_DWELL;
 if (iwm_mvm_rrm_scan_needed(sc))
  general_flags |= IWM_UMAC_SCAN_GEN_FLAGS_RRM_ENABLED;
 if (nssid != 0)
  general_flags |= IWM_UMAC_SCAN_GEN_FLAGS_PRE_CONNECT;
 else
  general_flags |= IWM_UMAC_SCAN_GEN_FLAGS_PASSIVE;

 channel_flags = 0;
 if (iwm_mvm_scan_use_ebs(sc))
  channel_flags = IWM_SCAN_CHANNEL_FLAG_EBS |
      IWM_SCAN_CHANNEL_FLAG_EBS_ACCURATE |
      IWM_SCAN_CHANNEL_FLAG_CACHE_ADD;

 req->general_flags = htole16(general_flags);
 req->ooc_priority = htole32(IWM_SCAN_PRIORITY_HIGH);


 if (iwm_fw_has_api(sc, IWM_UCODE_TLV_API_ADAPTIVE_DWELL)) {
  req->v7.active_dwell = 10;
  req->v7.passive_dwell = 110;
  req->v7.fragmented_dwell = 44;
  req->v7.adwell_default_n_aps_social = 10;
  req->v7.adwell_default_n_aps = 2;
  req->v7.adwell_max_budget = htole16(300);
  req->v7.scan_priority = htole32(IWM_SCAN_PRIORITY_HIGH);
  req->v7.channel.flags = channel_flags;
  req->v7.channel.count = iwm_mvm_umac_scan_fill_channels(sc,
      (struct iwm_scan_channel_cfg_umac *)req->v7.data, nssid);

  tail = (void *)((char *)&req->v7.data +
      sizeof(struct iwm_scan_channel_cfg_umac) *
      sc->sc_fw.ucode_capa.n_scan_channels);
 } else {
  req->v1.active_dwell = 10;
  req->v1.passive_dwell = 110;
  req->v1.fragmented_dwell = 44;
  req->v1.extended_dwell = 90;
  req->v1.scan_priority = htole32(IWM_SCAN_PRIORITY_HIGH);
  req->v1.channel.flags = channel_flags;
  req->v1.channel.count = iwm_mvm_umac_scan_fill_channels(sc,
      (struct iwm_scan_channel_cfg_umac *)req->v1.data, nssid);

  tail = (void *)((char *)&req->v1.data +
      sizeof(struct iwm_scan_channel_cfg_umac) *
      sc->sc_fw.ucode_capa.n_scan_channels);
 }


 for (i = 0; i < nssid; i++) {
  tail->direct_scan[i].id = IEEE80211_ELEMID_SSID;
  tail->direct_scan[i].len = MIN(ss->ss_ssid[i].len,
      IEEE80211_NWID_LEN);
  memcpy(tail->direct_scan[i].ssid, ss->ss_ssid[i].ssid,
      tail->direct_scan[i].len);

 }

 ret = iwm_mvm_fill_probe_req(sc, &tail->preq);
 if (ret) {
  free(req, M_DEVBUF);
  return ret;
 }


 tail->schedule[0].interval = 0;
 tail->schedule[0].iter_count = 1;

 ret = iwm_send_cmd(sc, &hcmd);
 if (!ret)
  IWM_DPRINTF(sc, IWM_DEBUG_SCAN,
      "Scan request was sent successfully\n");
 free(req, M_DEVBUF);
 return ret;
}
