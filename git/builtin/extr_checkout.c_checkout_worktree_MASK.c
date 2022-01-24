#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct checkout_opts {TYPE_2__* source_tree; scalar_t__ count_checkout_paths; scalar_t__ merge; int /*<<< orphan*/  overlay_mode; scalar_t__ writeout_stage; } ;
struct checkout {int force; int refresh_cache; int /*<<< orphan*/ * istate; } ;
struct cache_entry {int ce_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 int CE_MATCHED ; 
 struct checkout CHECKOUT_INIT ; 
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct cache_entry** active_cache ; 
 int active_nr ; 
 int /*<<< orphan*/  FUNC1 (struct cache_entry*) ; 
 int FUNC2 (struct cache_entry*,struct checkout*,int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (int,struct checkout*,int*) ; 
 int FUNC4 (scalar_t__,struct cache_entry*,int,struct checkout*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct checkout*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct checkout*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (struct cache_entry*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  the_index ; 

__attribute__((used)) static int FUNC12(const struct checkout_opts *opts)
{
	struct checkout state = CHECKOUT_INIT;
	int nr_checkouts = 0, nr_unmerged = 0;
	int errs = 0;
	int pos;

	state.force = 1;
	state.refresh_cache = 1;
	state.istate = &the_index;

	FUNC5(&state);
	for (pos = 0; pos < active_nr; pos++) {
		struct cache_entry *ce = active_cache[pos];
		if (ce->ce_flags & CE_MATCHED) {
			if (!FUNC1(ce)) {
				errs |= FUNC2(ce, &state,
						       NULL, &nr_checkouts);
				continue;
			}
			if (opts->writeout_stage)
				errs |= FUNC4(opts->writeout_stage,
						       ce, pos,
						       &state,
						       &nr_checkouts, opts->overlay_mode);
			else if (opts->merge)
				errs |= FUNC3(pos, &state,
							&nr_unmerged);
			pos = FUNC11(ce, pos) - 1;
		}
	}
	FUNC9(&the_index, 1);
	FUNC10();
	errs |= FUNC7(&state, &nr_checkouts);

	if (opts->count_checkout_paths) {
		if (nr_unmerged)
			FUNC8(stderr, FUNC0("Recreated %d merge conflict",
					      "Recreated %d merge conflicts",
					      nr_unmerged),
				   nr_unmerged);
		if (opts->source_tree)
			FUNC8(stderr, FUNC0("Updated %d path from %s",
					      "Updated %d paths from %s",
					      nr_checkouts),
				   nr_checkouts,
				   FUNC6(&opts->source_tree->object.oid,
						      DEFAULT_ABBREV));
		else if (!nr_unmerged || nr_checkouts)
			FUNC8(stderr, FUNC0("Updated %d path from the index",
					      "Updated %d paths from the index",
					      nr_checkouts),
				   nr_checkouts);
	}

	return errs;
}