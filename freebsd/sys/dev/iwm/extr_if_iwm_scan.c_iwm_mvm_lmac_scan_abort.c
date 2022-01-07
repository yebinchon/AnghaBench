
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct iwm_softc {int dummy; } ;
struct iwm_host_cmd {int flags; int data; int len; int id; } ;


 int ENOENT ;
 scalar_t__ IWM_CAN_ABORT_STATUS ;
 int IWM_CMD_SYNC ;
 int IWM_DEBUG_SCAN ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*,scalar_t__) ;
 int IWM_SCAN_OFFLOAD_ABORT_CMD ;
 int iwm_mvm_send_cmd_status (struct iwm_softc*,struct iwm_host_cmd*,scalar_t__*) ;

__attribute__((used)) static int
iwm_mvm_lmac_scan_abort(struct iwm_softc *sc)
{
 int ret;
 struct iwm_host_cmd hcmd = {
  .id = IWM_SCAN_OFFLOAD_ABORT_CMD,
  .len = { 0, },
  .data = { ((void*)0), },
  .flags = IWM_CMD_SYNC,
 };
 uint32_t status;

 ret = iwm_mvm_send_cmd_status(sc, &hcmd, &status);
 if (ret)
  return ret;

 if (status != IWM_CAN_ABORT_STATUS) {







  IWM_DPRINTF(sc, IWM_DEBUG_SCAN,
      "SCAN OFFLOAD ABORT ret %d.\n", status);
  ret = ENOENT;
 }

 return ret;
}
