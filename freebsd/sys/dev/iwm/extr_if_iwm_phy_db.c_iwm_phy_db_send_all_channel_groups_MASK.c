#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;
struct iwm_phy_db_entry {int /*<<< orphan*/  data; int /*<<< orphan*/  size; } ;
struct iwm_phy_db {TYPE_1__* sc; } ;
typedef  enum iwm_phy_db_section_type { ____Placeholder_iwm_phy_db_section_type } iwm_phy_db_section_type ;
struct TYPE_2__ {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IWM_DEBUG_CMD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,scalar_t__,int) ; 
 struct iwm_phy_db_entry* FUNC2 (struct iwm_phy_db*,int,scalar_t__) ; 
 int FUNC3 (struct iwm_phy_db*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct iwm_phy_db *phy_db,
				   enum iwm_phy_db_section_type type,
				   uint8_t max_ch_groups)
{
	uint16_t i;
	int err;
	struct iwm_phy_db_entry *entry;

	/* Send all the channel specific groups to operational fw */
	for (i = 0; i < max_ch_groups; i++) {
		entry = FUNC2(phy_db,
                                               type,
                                               i);
		if (!entry)
			return EINVAL;

		if (!entry->size)
			continue;

		/* Send the requested PHY DB section */
		err = FUNC3(phy_db,
					  type,
					  entry->size,
					  entry->data);
		if (err) {
			FUNC1(phy_db->sc->sc_dev,
				"Can't SEND phy_db section %d (%d), err %d\n",
				type, i, err);
			return err;
		}

		FUNC0(phy_db->sc, IWM_DEBUG_CMD,
		    "Sent PHY_DB HCMD, type = %d num = %d\n", type, i);
	}

	return 0;
}