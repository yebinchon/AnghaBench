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
struct config_store_data {int key_seen; int seen_nr; scalar_t__ multi_replace; int section_seen; int /*<<< orphan*/  parsed_nr; int /*<<< orphan*/ * seen; int /*<<< orphan*/  seen_alloc; scalar_t__ is_keys_section; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char const*,struct config_store_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC4(const char *key, const char *value, void *cb)
{
	struct config_store_data *store = cb;

	if (store->key_seen) {
		if (FUNC2(key, value, store)) {
			if (store->seen_nr == 1 && store->multi_replace == 0) {
				FUNC3(FUNC1("%s has multiple values"), key);
			}

			FUNC0(store->seen, store->seen_nr + 1,
				   store->seen_alloc);

			store->seen[store->seen_nr] = store->parsed_nr;
			store->seen_nr++;
		}
	} else if (store->is_keys_section) {
		/*
		 * Do not increment matches yet: this may not be a match, but we
		 * are in the desired section.
		 */
		FUNC0(store->seen, store->seen_nr + 1, store->seen_alloc);
		store->seen[store->seen_nr] = store->parsed_nr;
		store->section_seen = 1;

		if (FUNC2(key, value, store)) {
			store->seen_nr++;
			store->key_seen = 1;
		}
	}

	return 0;
}