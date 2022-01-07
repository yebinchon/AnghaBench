
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwi_softc {int dummy; } ;
struct iwi_sensitivity {int rssi; } ;
typedef int int8_t ;


 int DPRINTF (char*) ;
 int IWI_CMD_SET_SENSITIVITY ;
 int htole16 (int ) ;
 int iwi_cmd (struct iwi_softc*,int ,struct iwi_sensitivity*,int) ;
 int memset (struct iwi_sensitivity*,int ,int) ;

__attribute__((used)) static int
iwi_set_sensitivity(struct iwi_softc *sc, int8_t rssi_dbm)
{
 struct iwi_sensitivity sens;

 DPRINTF(("Setting sensitivity to %d\n", rssi_dbm));

 memset(&sens, 0, sizeof sens);
 sens.rssi = htole16(rssi_dbm);
 return iwi_cmd(sc, IWI_CMD_SET_SENSITIVITY, &sens, sizeof sens);
}
