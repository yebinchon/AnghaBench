
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct iwm_softc {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct iwm_rx_packet {scalar_t__ data; TYPE_1__ hdr; } ;
struct iwm_host_cmd {int flags; struct iwm_rx_packet* resp_pkt; } ;
struct iwm_cmd_response {int status; } ;


 int EIO ;
 int IWM_CMD_FAILED_MSK ;
 int IWM_CMD_SYNC ;
 int IWM_CMD_WANT_SKB ;
 int KASSERT (int,char*) ;
 int iwm_free_resp (struct iwm_softc*,struct iwm_host_cmd*) ;
 int iwm_rx_packet_payload_len (struct iwm_rx_packet*) ;
 int iwm_send_cmd (struct iwm_softc*,struct iwm_host_cmd*) ;
 int le32toh (int ) ;

int
iwm_mvm_send_cmd_status(struct iwm_softc *sc,
 struct iwm_host_cmd *cmd, uint32_t *status)
{
 struct iwm_rx_packet *pkt;
 struct iwm_cmd_response *resp;
 int error, resp_len;

 KASSERT((cmd->flags & IWM_CMD_WANT_SKB) == 0,
     ("invalid command"));
 cmd->flags |= IWM_CMD_SYNC | IWM_CMD_WANT_SKB;

 if ((error = iwm_send_cmd(sc, cmd)) != 0)
  return error;
 pkt = cmd->resp_pkt;


 if (!pkt) {
  error = 0;
  goto out_free_resp;
 }

 if (pkt->hdr.flags & IWM_CMD_FAILED_MSK) {
  error = EIO;
  goto out_free_resp;
 }

 resp_len = iwm_rx_packet_payload_len(pkt);
 if (resp_len != sizeof(*resp)) {
  error = EIO;
  goto out_free_resp;
 }

 resp = (void *)pkt->data;
 *status = le32toh(resp->status);
 out_free_resp:
 iwm_free_resp(sc, cmd);
 return error;
}
