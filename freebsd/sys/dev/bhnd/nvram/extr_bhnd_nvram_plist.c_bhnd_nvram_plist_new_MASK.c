#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int refs; int /*<<< orphan*/ * names; int /*<<< orphan*/  entries; scalar_t__ num_entries; } ;
typedef  TYPE_1__ bhnd_nvram_plist ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 

bhnd_nvram_plist *
FUNC4(void)
{
	bhnd_nvram_plist *plist;

	plist = FUNC2(1, sizeof(*plist));
	if (plist == NULL)
		return NULL;

	/* Implicit caller-owned reference */
	plist->refs = 1;

	/* Initialize entry list */
	plist->num_entries = 0;
	FUNC1(&plist->entries);

	/* Initialize entry hash table */
	for (size_t i = 0; i < FUNC3(plist->names); i++)
		FUNC0(&plist->names[i]);

	return (plist);
}