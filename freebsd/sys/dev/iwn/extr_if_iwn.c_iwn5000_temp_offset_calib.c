
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {scalar_t__ eeprom_temp; } ;
struct iwn5000_phy_calib_temp_offset {int ngroups; int isvalid; void* offset; int code; } ;


 int DPRINTF (struct iwn_softc*,int ,char*,int ) ;
 int IWN5000_PHY_CALIB_TEMP_OFFSET ;
 int IWN_CMD_PHY_CALIB ;
 int IWN_DEBUG_CALIBRATE ;
 scalar_t__ IWN_DEFAULT_TEMP_OFFSET ;
 void* htole16 (scalar_t__) ;
 int iwn_cmd (struct iwn_softc*,int ,struct iwn5000_phy_calib_temp_offset*,int,int ) ;
 int le16toh (void*) ;
 int memset (struct iwn5000_phy_calib_temp_offset*,int ,int) ;

__attribute__((used)) static int
iwn5000_temp_offset_calib(struct iwn_softc *sc)
{
 struct iwn5000_phy_calib_temp_offset cmd;

 memset(&cmd, 0, sizeof cmd);
 cmd.code = IWN5000_PHY_CALIB_TEMP_OFFSET;
 cmd.ngroups = 1;
 cmd.isvalid = 1;
 if (sc->eeprom_temp != 0)
  cmd.offset = htole16(sc->eeprom_temp);
 else
  cmd.offset = htole16(IWN_DEFAULT_TEMP_OFFSET);
 DPRINTF(sc, IWN_DEBUG_CALIBRATE, "setting radio sensor offset to %d\n",
     le16toh(cmd.offset));
 return iwn_cmd(sc, IWN_CMD_PHY_CALIB, &cmd, sizeof cmd, 0);
}
