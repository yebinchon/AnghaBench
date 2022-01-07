
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int sc_ps_disabled; } ;
struct iwm_device_power_cmd {int flags; } ;
typedef int cmd ;


 int IWM_DEBUG_CMD ;
 int IWM_DEBUG_PWRSAVE ;
 int IWM_DEVICE_POWER_FLAGS_POWER_SAVE_ENA_MSK ;
 int IWM_DPRINTF (struct iwm_softc*,int,char*,int ) ;
 scalar_t__ IWM_POWER_SCHEME_CAM ;
 int IWM_POWER_TABLE_CMD ;
 int TRUE ;
 int htole16 (int ) ;
 int iwm_mvm_send_cmd_pdu (struct iwm_softc*,int ,int ,int,struct iwm_device_power_cmd*) ;
 scalar_t__ iwm_power_scheme ;

int
iwm_mvm_power_update_device(struct iwm_softc *sc)
{
 struct iwm_device_power_cmd cmd = {
  .flags = 0,
 };

 if (iwm_power_scheme == IWM_POWER_SCHEME_CAM)
  sc->sc_ps_disabled = TRUE;

 if (!sc->sc_ps_disabled)
  cmd.flags |= htole16(IWM_DEVICE_POWER_FLAGS_POWER_SAVE_ENA_MSK);

 IWM_DPRINTF(sc, IWM_DEBUG_PWRSAVE | IWM_DEBUG_CMD,
     "Sending device power command with flags = 0x%X\n", cmd.flags);

 return iwm_mvm_send_cmd_pdu(sc,
     IWM_POWER_TABLE_CMD, 0, sizeof(cmd), &cmd);
}
