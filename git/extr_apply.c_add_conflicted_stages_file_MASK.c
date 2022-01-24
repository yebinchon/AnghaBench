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
struct patch {int new_mode; int /*<<< orphan*/  new_name; int /*<<< orphan*/ * threeway_stage; } ;
struct cache_entry {int ce_namelen; int /*<<< orphan*/  oid; int /*<<< orphan*/  ce_flags; int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  name; } ;
struct apply_state {TYPE_1__* repo; int /*<<< orphan*/  update_index; } ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADD_CACHE_OK_TO_ADD ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct cache_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct cache_entry*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 struct cache_entry* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct apply_state *state,
				       struct patch *patch)
{
	int stage, namelen;
	unsigned mode;
	struct cache_entry *ce;

	if (!state->update_index)
		return 0;
	namelen = FUNC11(patch->new_name);
	mode = patch->new_mode ? patch->new_mode : (S_IFREG | 0644);

	FUNC10(state->repo->index, patch->new_name);
	for (stage = 1; stage < 4; stage++) {
		if (FUNC6(&patch->threeway_stage[stage - 1]))
			continue;
		ce = FUNC7(state->repo->index, namelen);
		FUNC8(ce->name, patch->new_name, namelen);
		ce->ce_mode = FUNC3(mode);
		ce->ce_flags = FUNC2(stage);
		ce->ce_namelen = namelen;
		FUNC9(&ce->oid, &patch->threeway_stage[stage - 1]);
		if (FUNC1(state->repo->index, ce, ADD_CACHE_OK_TO_ADD) < 0) {
			FUNC4(ce);
			return FUNC5(FUNC0("unable to add cache entry for %s"),
				     patch->new_name);
		}
	}

	return 0;
}