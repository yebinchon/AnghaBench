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
struct spdcache_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct spdcache_entry* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct spdcache_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int V_spdcachehash_mask ; 
 int /*<<< orphan*/ * V_spdcachehashtbl ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  FUNC5 (struct spdcache_entry*) ; 

void
FUNC6(void)
{
	struct spdcache_entry *entry;
	int i;

	for (i = 0; i < V_spdcachehash_mask + 1; ++i) {
		FUNC3(i);
		while (!FUNC0(&V_spdcachehashtbl[i])) {
			entry = FUNC1(&V_spdcachehashtbl[i]);
			FUNC2(entry, chain);
			FUNC5(entry);
		}
		FUNC4(i);
	}
}