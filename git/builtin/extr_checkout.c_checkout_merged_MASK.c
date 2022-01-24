#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  threeway ;
struct object_id {int dummy; } ;
struct checkout {int /*<<< orphan*/  istate; } ;
struct cache_entry {char* name; int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  oid; } ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ mmfile_t ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  size; } ;
typedef  TYPE_2__ mmbuffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct cache_entry** active_cache ; 
 int active_nr ; 
 int /*<<< orphan*/  blob_type ; 
 int FUNC1 (struct cache_entry*) ; 
 int FUNC2 (struct cache_entry*,struct checkout const*,int /*<<< orphan*/ *,int*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct cache_entry*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct object_id*) ; 
 int FUNC9 (TYPE_2__*,char const*,TYPE_1__*,char*,TYPE_1__*,char*,TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cache_entry* FUNC10 (unsigned int,struct object_id*,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct object_id*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct object_id*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,struct object_id*) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*) ; 

__attribute__((used)) static int FUNC16(int pos, const struct checkout *state, int *nr_checkouts)
{
	struct cache_entry *ce = active_cache[pos];
	const char *path = ce->name;
	mmfile_t ancestor, ours, theirs;
	int status;
	struct object_id oid;
	mmbuffer_t result_buf;
	struct object_id threeway[3];
	unsigned mode = 0;

	FUNC11(threeway, 0, sizeof(threeway));
	while (pos < active_nr) {
		int stage;
		stage = FUNC1(ce);
		if (!stage || FUNC14(path, ce->name))
			break;
		FUNC12(&threeway[stage - 1], &ce->oid);
		if (stage == 2)
			mode = FUNC3(ce->ce_mode);
		pos++;
		ce = active_cache[pos];
	}
	if (FUNC8(&threeway[1]) || FUNC8(&threeway[2]))
		return FUNC6(FUNC0("path '%s' does not have necessary versions"), path);

	FUNC13(&ancestor, &threeway[0]);
	FUNC13(&ours, &threeway[1]);
	FUNC13(&theirs, &threeway[2]);

	/*
	 * NEEDSWORK: re-create conflicts from merges with
	 * merge.renormalize set, too
	 */
	status = FUNC9(&result_buf, path, &ancestor, "base",
			  &ours, "ours", &theirs, "theirs",
			  state->istate, NULL);
	FUNC7(ancestor.ptr);
	FUNC7(ours.ptr);
	FUNC7(theirs.ptr);
	if (status < 0 || !result_buf.ptr) {
		FUNC7(result_buf.ptr);
		return FUNC6(FUNC0("path '%s': cannot merge"), path);
	}

	/*
	 * NEEDSWORK:
	 * There is absolutely no reason to write this as a blob object
	 * and create a phony cache entry.  This hack is primarily to get
	 * to the write_entry() machinery that massages the contents to
	 * work-tree format and writes out which only allows it for a
	 * cache entry.  The code in write_entry() needs to be refactored
	 * to allow us to feed a <buffer, size, mode> instead of a cache
	 * entry.  Such a refactoring would help merge_recursive as well
	 * (it also writes the merge result to the object database even
	 * when it may contain conflicts).
	 */
	if (FUNC15(result_buf.ptr, result_buf.size, blob_type, &oid))
		FUNC4(FUNC0("Unable to add merge result for '%s'"), path);
	FUNC7(result_buf.ptr);
	ce = FUNC10(mode, &oid, path, 2);
	if (!ce)
		FUNC4(FUNC0("make_cache_entry failed for path '%s'"), path);
	status = FUNC2(ce, state, NULL, nr_checkouts);
	FUNC5(ce);
	return status;
}