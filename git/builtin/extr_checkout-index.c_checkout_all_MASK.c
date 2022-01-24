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
struct cache_entry {char const* name; } ;

/* Variables and functions */
 scalar_t__ CHECKOUT_ALL ; 
 struct cache_entry** active_cache ; 
 int active_nr ; 
 int FUNC0 (struct cache_entry*) ; 
 size_t FUNC1 (struct cache_entry*) ; 
 scalar_t__ FUNC2 (struct cache_entry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ checkout_stage ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*,char const*,int) ; 
 int /*<<< orphan*/  state ; 
 scalar_t__ to_tempfile ; 
 int /*<<< orphan*/ ** topath ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 

__attribute__((used)) static void FUNC6(const char *prefix, int prefix_length)
{
	int i, errs = 0;
	struct cache_entry *last_ce = NULL;

	for (i = 0; i < active_nr ; i++) {
		struct cache_entry *ce = active_cache[i];
		if (FUNC1(ce) != checkout_stage
		    && (CHECKOUT_ALL != checkout_stage || !FUNC1(ce)))
			continue;
		if (prefix && *prefix &&
		    (FUNC0(ce) <= prefix_length ||
		     FUNC4(prefix, ce->name, prefix_length)))
			continue;
		if (last_ce && to_tempfile) {
			if (FUNC0(last_ce) != FUNC0(ce)
			    || FUNC4(last_ce->name, ce->name, FUNC0(ce)))
				FUNC5(last_ce->name, prefix);
		}
		if (FUNC2(ce, &state,
				   to_tempfile ? topath[FUNC1(ce)] : NULL,
				   NULL) < 0)
			errs++;
		last_ce = ce;
	}
	if (last_ce && to_tempfile)
		FUNC5(last_ce->name, prefix);
	if (errs)
		/* we have already done our error reporting.
		 * exit with the same code as die().
		 */
		FUNC3(128);
}