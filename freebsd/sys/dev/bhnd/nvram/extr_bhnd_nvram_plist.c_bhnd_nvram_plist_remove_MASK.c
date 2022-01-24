#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  prop; } ;
typedef  TYPE_1__ bhnd_nvram_plist_entry ;
struct TYPE_10__ {scalar_t__ num_entries; int /*<<< orphan*/  entries; } ;
typedef  TYPE_2__ bhnd_nvram_plist ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pl_hash_link ; 
 int /*<<< orphan*/  pl_link ; 

void
FUNC6(bhnd_nvram_plist *plist, const char *name)
{
	bhnd_nvram_plist_entry *entry;

	/* Fetch entry */
	entry = FUNC4(plist, name);
	if (entry == NULL)
		return;

	/* Remove from entry list and hash table */
	FUNC2(&plist->entries, entry, pl_link);
	FUNC1(entry, pl_hash_link);

	/* Free plist entry */
	FUNC5(entry->prop);
	FUNC3(entry);

	/* Decrement entry count */
	FUNC0(plist->num_entries > 0, ("entry count over-release"));
	plist->num_entries--;
}