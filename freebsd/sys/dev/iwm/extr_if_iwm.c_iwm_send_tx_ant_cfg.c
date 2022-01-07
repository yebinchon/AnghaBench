
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int tx_ant_cmd ;
struct iwm_tx_ant_cfg_cmd {int valid; } ;
struct iwm_softc {int dummy; } ;


 int IWM_CMD_SYNC ;
 int IWM_TX_ANT_CONFIGURATION_CMD ;
 int htole32 (int ) ;
 int iwm_mvm_send_cmd_pdu (struct iwm_softc*,int ,int ,int,struct iwm_tx_ant_cfg_cmd*) ;

__attribute__((used)) static int
iwm_send_tx_ant_cfg(struct iwm_softc *sc, uint8_t valid_tx_ant)
{
 struct iwm_tx_ant_cfg_cmd tx_ant_cmd = {
  .valid = htole32(valid_tx_ant),
 };

 return iwm_mvm_send_cmd_pdu(sc, IWM_TX_ANT_CONFIGURATION_CMD,
     IWM_CMD_SYNC, sizeof(tx_ant_cmd), &tx_ant_cmd);
}
