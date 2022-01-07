
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iwm_phy_db_entry {scalar_t__ size; int * data; } ;
struct iwm_phy_db {int dummy; } ;
typedef enum iwm_phy_db_section_type { ____Placeholder_iwm_phy_db_section_type } iwm_phy_db_section_type ;


 int M_DEVBUF ;
 int free (int *,int ) ;
 struct iwm_phy_db_entry* iwm_phy_db_get_section (struct iwm_phy_db*,int,int ) ;

__attribute__((used)) static void
iwm_phy_db_free_section(struct iwm_phy_db *phy_db,
   enum iwm_phy_db_section_type type, uint16_t chg_id)
{
 struct iwm_phy_db_entry *entry =
    iwm_phy_db_get_section(phy_db, type, chg_id);
 if (!entry)
  return;

 if (entry->data != ((void*)0))
  free(entry->data, M_DEVBUF);
 entry->data = ((void*)0);
 entry->size = 0;
}
