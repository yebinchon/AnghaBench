
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_umac_scan_abort {int uid; } ;
struct iwm_softc {int dummy; } ;
typedef int cmd ;


 int IWM_ALWAYS_LONG_GROUP ;
 int IWM_DEBUG_SCAN ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*,int) ;
 int IWM_SCAN_ABORT_UMAC ;
 int htole32 (int) ;
 int iwm_cmd_id (int ,int ,int ) ;
 int iwm_mvm_send_cmd_pdu (struct iwm_softc*,int ,int ,int,struct iwm_umac_scan_abort*) ;

__attribute__((used)) static int
iwm_mvm_umac_scan_abort(struct iwm_softc *sc)
{
 struct iwm_umac_scan_abort cmd = {};
 int uid, ret;

 uid = 0;
 cmd.uid = htole32(uid);

 IWM_DPRINTF(sc, IWM_DEBUG_SCAN, "Sending scan abort, uid %u\n", uid);

 ret = iwm_mvm_send_cmd_pdu(sc,
       iwm_cmd_id(IWM_SCAN_ABORT_UMAC,
           IWM_ALWAYS_LONG_GROUP, 0),
       0, sizeof(cmd), &cmd);

 return ret;
}
