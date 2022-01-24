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
typedef  int /*<<< orphan*/  uint32_t ;
struct bhndb_pci_quirk {int /*<<< orphan*/  quirks; int /*<<< orphan*/  core_desc; int /*<<< orphan*/  chip_desc; } ;
struct bhndb_pci_core {struct bhndb_pci_quirk* quirks; } ;
struct bhnd_core_info {int dummy; } ;
struct bhnd_chipid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhndb_pci_quirk*) ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_chipid*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_core_info*,int /*<<< orphan*/ *) ; 
 struct bhndb_pci_core* FUNC3 (struct bhnd_core_info*) ; 

__attribute__((used)) static uint32_t
FUNC4(struct bhnd_chipid *cid, struct bhnd_core_info *ci)
{
	struct bhndb_pci_core	*entry;
	struct bhndb_pci_quirk	*qtable;
	uint32_t		 quirks;

	quirks = 0;

	/* No core entry? */
	if ((entry = FUNC3(ci)) == NULL)
		return (quirks);

	/* No quirks? */
	if ((qtable = entry->quirks) == NULL)
		return (quirks);

	for (size_t i = 0; !FUNC0(&qtable[i]); i++) {
		struct bhndb_pci_quirk *q = &qtable[i];

		if (!FUNC1(cid, &q->chip_desc))
			continue;

		if (!FUNC2(ci, &q->core_desc))
			continue;

		quirks |= q->quirks;
	}

	return (quirks);
}