
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int eeprom_crystal; } ;
struct iwn5000_phy_calib_crystal {int ngroups; int isvalid; int* cap_pin; int code; } ;


 int DPRINTF (struct iwn_softc*,int ,char*,int,int) ;
 int IWN5000_PHY_CALIB_CRYSTAL ;
 int IWN_CMD_PHY_CALIB ;
 int IWN_DEBUG_CALIBRATE ;
 int iwn_cmd (struct iwn_softc*,int ,struct iwn5000_phy_calib_crystal*,int,int ) ;
 int le32toh (int ) ;
 int memset (struct iwn5000_phy_calib_crystal*,int ,int) ;

__attribute__((used)) static int
iwn5000_crystal_calib(struct iwn_softc *sc)
{
 struct iwn5000_phy_calib_crystal cmd;

 memset(&cmd, 0, sizeof cmd);
 cmd.code = IWN5000_PHY_CALIB_CRYSTAL;
 cmd.ngroups = 1;
 cmd.isvalid = 1;
 cmd.cap_pin[0] = le32toh(sc->eeprom_crystal) & 0xff;
 cmd.cap_pin[1] = (le32toh(sc->eeprom_crystal) >> 16) & 0xff;
 DPRINTF(sc, IWN_DEBUG_CALIBRATE, "sending crystal calibration %d, %d\n",
     cmd.cap_pin[0], cmd.cap_pin[1]);
 return iwn_cmd(sc, IWN_CMD_PHY_CALIB, &cmd, sizeof cmd, 0);
}
