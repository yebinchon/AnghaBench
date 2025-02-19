
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct iwm_softc {int sc_dev; } ;
struct iwm_mvm_phy_ctxt {int color; int id; } ;
struct iwm_mvm_iface_iterator_data {int idx; int * colors; int * ids; struct iwm_mvm_phy_ctxt* phyctxt; } ;
struct iwm_binding_cmd {void** macs; void* phy; void* action; void* id_and_color; } ;
typedef int cmd ;


 int EIO ;
 int IWM_BINDING_CONTEXT_CMD ;
 scalar_t__ IWM_FW_CMD_ID_AND_COLOR (int ,int ) ;
 scalar_t__ IWM_FW_CTXT_INVALID ;
 int IWM_MAX_MACS_IN_BINDING ;
 int device_printf (int ,char*,scalar_t__,...) ;
 void* htole32 (scalar_t__) ;
 int iwm_mvm_send_cmd_pdu_status (struct iwm_softc*,int ,int,struct iwm_binding_cmd*,scalar_t__*) ;
 int memset (struct iwm_binding_cmd*,int ,int) ;

__attribute__((used)) static int
iwm_mvm_binding_cmd(struct iwm_softc *sc, uint32_t action,
 struct iwm_mvm_iface_iterator_data *data)
{
 struct iwm_binding_cmd cmd;
 struct iwm_mvm_phy_ctxt *phyctxt = data->phyctxt;
 int i, ret;
 uint32_t status;

 memset(&cmd, 0, sizeof(cmd));

 cmd.id_and_color
     = htole32(IWM_FW_CMD_ID_AND_COLOR(phyctxt->id, phyctxt->color));
 cmd.action = htole32(action);
 cmd.phy = htole32(IWM_FW_CMD_ID_AND_COLOR(phyctxt->id, phyctxt->color));

 for (i = 0; i < IWM_MAX_MACS_IN_BINDING; i++)
  cmd.macs[i] = htole32(IWM_FW_CTXT_INVALID);
 for (i = 0; i < data->idx; i++)
  cmd.macs[i] = htole32(IWM_FW_CMD_ID_AND_COLOR(data->ids[i],
             data->colors[i]));

 status = 0;
 ret = iwm_mvm_send_cmd_pdu_status(sc, IWM_BINDING_CONTEXT_CMD,
     sizeof(cmd), &cmd, &status);
 if (ret) {
  device_printf(sc->sc_dev,
      "Failed to send binding (action:%d): %d\n", action, ret);
  return ret;
 }

 if (status) {
  device_printf(sc->sc_dev,
      "Binding command failed: %u\n", status);
  ret = EIO;
 }

 return ret;
}
