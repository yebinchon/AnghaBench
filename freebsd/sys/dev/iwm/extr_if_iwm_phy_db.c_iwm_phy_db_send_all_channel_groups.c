
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct iwm_phy_db_entry {int data; int size; } ;
struct iwm_phy_db {TYPE_1__* sc; } ;
typedef enum iwm_phy_db_section_type { ____Placeholder_iwm_phy_db_section_type } iwm_phy_db_section_type ;
struct TYPE_2__ {int sc_dev; } ;


 int EINVAL ;
 int IWM_DEBUG_CMD ;
 int IWM_DPRINTF (TYPE_1__*,int ,char*,int,scalar_t__) ;
 int device_printf (int ,char*,int,scalar_t__,int) ;
 struct iwm_phy_db_entry* iwm_phy_db_get_section (struct iwm_phy_db*,int,scalar_t__) ;
 int iwm_send_phy_db_cmd (struct iwm_phy_db*,int,int ,int ) ;

__attribute__((used)) static int
iwm_phy_db_send_all_channel_groups(struct iwm_phy_db *phy_db,
       enum iwm_phy_db_section_type type,
       uint8_t max_ch_groups)
{
 uint16_t i;
 int err;
 struct iwm_phy_db_entry *entry;


 for (i = 0; i < max_ch_groups; i++) {
  entry = iwm_phy_db_get_section(phy_db,
                                               type,
                                               i);
  if (!entry)
   return EINVAL;

  if (!entry->size)
   continue;


  err = iwm_send_phy_db_cmd(phy_db,
       type,
       entry->size,
       entry->data);
  if (err) {
   device_printf(phy_db->sc->sc_dev,
    "Can't SEND phy_db section %d (%d), err %d\n",
    type, i, err);
   return err;
  }

  IWM_DPRINTF(phy_db->sc, IWM_DEBUG_CMD,
      "Sent PHY_DB HCMD, type = %d num = %d\n", type, i);
 }

 return 0;
}
