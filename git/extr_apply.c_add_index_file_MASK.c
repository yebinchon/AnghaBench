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
struct stat {int dummy; } ;
struct cache_entry {int ce_namelen; int /*<<< orphan*/  oid; int /*<<< orphan*/  ce_flags; int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  name; } ;
struct apply_state {TYPE_1__* repo; int /*<<< orphan*/  cached; scalar_t__ ita_only; } ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADD_CACHE_OK_TO_ADD ; 
 int /*<<< orphan*/  CE_INTENT_TO_ADD ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct cache_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  blob_type ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct cache_entry*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct cache_entry*,struct stat*) ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char const*,struct stat*) ; 
 struct cache_entry* FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC14 (void*,char*,char const**) ; 
 int FUNC15 (char const*) ; 
 scalar_t__ FUNC16 (void*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct apply_state *state,
			  const char *path,
			  unsigned mode,
			  void *buf,
			  unsigned long size)
{
	struct stat st;
	struct cache_entry *ce;
	int namelen = FUNC15(path);

	ce = FUNC11(state->repo->index, namelen);
	FUNC12(ce->name, path, namelen);
	ce->ce_mode = FUNC4(mode);
	ce->ce_flags = FUNC3(0);
	ce->ce_namelen = namelen;
	if (state->ita_only) {
		ce->ce_flags |= CE_INTENT_TO_ADD;
		FUNC13(ce);
	} else if (FUNC0(mode)) {
		const char *s;

		if (!FUNC14(buf, "Subproject commit ", &s) ||
		    FUNC9(s, &ce->oid)) {
			FUNC5(ce);
			return FUNC6(FUNC1("corrupt patch for submodule %s"), path);
		}
	} else {
		if (!state->cached) {
			if (FUNC10(path, &st) < 0) {
				FUNC5(ce);
				return FUNC7(FUNC1("unable to stat newly "
						     "created file '%s'"),
						   path);
			}
			FUNC8(state->repo->index, ce, &st);
		}
		if (FUNC16(buf, size, blob_type, &ce->oid) < 0) {
			FUNC5(ce);
			return FUNC6(FUNC1("unable to create backing store "
				       "for newly created file %s"), path);
		}
	}
	if (FUNC2(state->repo->index, ce, ADD_CACHE_OK_TO_ADD) < 0) {
		FUNC5(ce);
		return FUNC6(FUNC1("unable to add cache entry for %s"), path);
	}

	return 0;
}