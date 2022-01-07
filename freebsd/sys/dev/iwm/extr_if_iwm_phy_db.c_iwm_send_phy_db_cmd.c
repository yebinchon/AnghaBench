
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iwm_phy_db_cmd {void* length; void* type; } ;
struct iwm_phy_db {int sc; } ;
struct iwm_host_cmd {int* len; int * dataflags; struct iwm_phy_db_cmd** data; int id; } ;


 int IWM_DEBUG_RESET ;
 int IWM_DPRINTF (int ,int ,char*,int,int) ;
 int IWM_HCMD_DFL_NOCOPY ;
 int PHY_DB_CMD ;
 void* htole16 (int) ;
 int iwm_send_cmd (int ,struct iwm_host_cmd*) ;

__attribute__((used)) static int
iwm_send_phy_db_cmd(struct iwm_phy_db *phy_db, uint16_t type,
      uint16_t length, void *data)
{
 struct iwm_phy_db_cmd phy_db_cmd;
 struct iwm_host_cmd cmd = {
  .id = PHY_DB_CMD,
 };

 IWM_DPRINTF(phy_db->sc, IWM_DEBUG_RESET,
     "Sending PHY-DB hcmd of type %d, of length %d\n",
     type, length);


 phy_db_cmd.type = htole16(type);
 phy_db_cmd.length = htole16(length);


 cmd.data[0] = &phy_db_cmd;
 cmd.len[0] = sizeof(struct iwm_phy_db_cmd);
 cmd.data[1] = data;
 cmd.len[1] = length;




 return iwm_send_cmd(phy_db->sc, &cmd);
}
