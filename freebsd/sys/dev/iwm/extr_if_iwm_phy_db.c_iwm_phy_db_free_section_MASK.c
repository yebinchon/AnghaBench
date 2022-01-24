#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct iwm_phy_db_entry {scalar_t__ size; int /*<<< orphan*/ * data; } ;
struct iwm_phy_db {int dummy; } ;
typedef  enum iwm_phy_db_section_type { ____Placeholder_iwm_phy_db_section_type } iwm_phy_db_section_type ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct iwm_phy_db_entry* FUNC1 (struct iwm_phy_db*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct iwm_phy_db *phy_db,
			enum iwm_phy_db_section_type type, uint16_t chg_id)
{
	struct iwm_phy_db_entry *entry =
				FUNC1(phy_db, type, chg_id);
	if (!entry)
		return;

	if (entry->data != NULL)
		FUNC0(entry->data, M_DEVBUF);
	entry->data = NULL;
	entry->size = 0;
}