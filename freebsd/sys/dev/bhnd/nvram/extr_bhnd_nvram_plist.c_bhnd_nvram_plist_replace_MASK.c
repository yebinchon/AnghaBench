#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ bhnd_nvram_prop ;
struct TYPE_8__ {int /*<<< orphan*/  prop; } ;
typedef  TYPE_2__ bhnd_nvram_plist_entry ;
typedef  int /*<<< orphan*/  bhnd_nvram_plist ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int
FUNC4(bhnd_nvram_plist *plist, bhnd_nvram_prop *prop)
{
	bhnd_nvram_plist_entry	*entry;

	/* Fetch current entry */
	entry = FUNC1(plist, prop->name);
	if (entry == NULL) {
		/* Not found -- append property instead */
		return (FUNC0(plist, prop));
	}

	/* Replace the current entry's property reference */
	FUNC2(entry->prop);
	entry->prop = FUNC3(prop);

	return (0);
}