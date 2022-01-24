#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct patch {char* old_name; int is_new; unsigned int new_mode; unsigned int old_mode; scalar_t__ is_delete; } ;
struct cache_entry {unsigned int ce_mode; } ;
struct apply_state {scalar_t__ cached; TYPE_1__* repo; scalar_t__ check_index; } ;
struct TYPE_5__ {struct cache_entry** cache; } ;
struct TYPE_4__ {TYPE_2__* index; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int S_IFMT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int FUNC3 (struct cache_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,struct cache_entry*,struct stat*) ; 
 scalar_t__ errno ; 
 int FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC6 (char*,char const*) ; 
 int FUNC7 (TYPE_2__*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char const*,struct stat*) ; 
 struct patch* FUNC9 (struct apply_state*,struct patch*,int*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (struct apply_state*,struct cache_entry*,struct stat*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char const*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC13(struct apply_state *state,
			  struct patch *patch,
			  struct cache_entry **ce,
			  struct stat *st)
{
	const char *old_name = patch->old_name;
	struct patch *previous = NULL;
	int stat_ret = 0, status;
	unsigned st_mode = 0;

	if (!old_name)
		return 0;

	FUNC2(patch->is_new <= 0);
	previous = FUNC9(state, patch, &status);

	if (status)
		return FUNC5(FUNC1("path %s has been renamed/deleted"), old_name);
	if (previous) {
		st_mode = previous->new_mode;
	} else if (!state->cached) {
		stat_ret = FUNC8(old_name, st);
		if (stat_ret && errno != ENOENT)
			return FUNC6("%s", old_name);
	}

	if (state->check_index && !previous) {
		int pos = FUNC7(state->repo->index, old_name,
					 FUNC10(old_name));
		if (pos < 0) {
			if (patch->is_new < 0)
				goto is_new;
			return FUNC5(FUNC1("%s: does not exist in index"), old_name);
		}
		*ce = state->repo->index->cache[pos];
		if (stat_ret < 0) {
			if (FUNC4(state->repo->index, *ce, st))
				return -1;
		}
		if (!state->cached && FUNC11(state, *ce, st))
			return FUNC5(FUNC1("%s: does not match index"), old_name);
		if (state->cached)
			st_mode = (*ce)->ce_mode;
	} else if (stat_ret < 0) {
		if (patch->is_new < 0)
			goto is_new;
		return FUNC6("%s", old_name);
	}

	if (!state->cached && !previous)
		st_mode = FUNC3(*ce, st->st_mode);

	if (patch->is_new < 0)
		patch->is_new = 0;
	if (!patch->old_mode)
		patch->old_mode = st_mode;
	if ((st_mode ^ patch->old_mode) & S_IFMT)
		return FUNC5(FUNC1("%s: wrong type"), old_name);
	if (st_mode != patch->old_mode)
		FUNC12(FUNC1("%s has type %o, expected %o"),
			old_name, st_mode, patch->old_mode);
	if (!patch->new_mode && !patch->is_delete)
		patch->new_mode = st_mode;
	return 0;

 is_new:
	patch->is_new = 1;
	patch->is_delete = 0;
	FUNC0(patch->old_name);
	return 0;
}