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
struct strbuf {int dummy; } ;
struct stat {int dummy; } ;
struct patch {int /*<<< orphan*/  is_binary; int /*<<< orphan*/  old_name; int /*<<< orphan*/ * fragments; int /*<<< orphan*/  old_mode; int /*<<< orphan*/  resultsize; int /*<<< orphan*/  result; } ;
struct image {int dummy; } ;
struct cache_entry {int dummy; } ;
struct apply_state {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int SUBMODULE_PATCH_WITHOUT_INDEX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct apply_state*,struct strbuf*,struct cache_entry const*,struct stat*,struct patch*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct image*,char*,size_t,int) ; 
 struct patch* FUNC5 (struct apply_state*,struct patch*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (struct strbuf*,size_t*) ; 

__attribute__((used)) static int FUNC8(struct apply_state *state,
			 struct image *image,
			 struct patch *patch, struct stat *st,
			 const struct cache_entry *ce)
{
	struct strbuf buf = STRBUF_INIT;
	size_t len;
	char *img;
	struct patch *previous;
	int status;

	previous = FUNC5(state, patch, &status);
	if (status)
		return FUNC1(FUNC0("path %s has been renamed/deleted"),
			     patch->old_name);
	if (previous) {
		/* We have a patched copy in memory; use that. */
		FUNC6(&buf, previous->result, previous->resultsize);
	} else {
		status = FUNC3(state, &buf, ce, st, patch,
					   patch->old_name, patch->old_mode);
		if (status < 0)
			return status;
		else if (status == SUBMODULE_PATCH_WITHOUT_INDEX) {
			/*
			 * There is no way to apply subproject
			 * patch without looking at the index.
			 * NEEDSWORK: shouldn't this be flagged
			 * as an error???
			 */
			FUNC2(patch->fragments);
			patch->fragments = NULL;
		} else if (status) {
			return FUNC1(FUNC0("failed to read %s"), patch->old_name);
		}
	}

	img = FUNC7(&buf, &len);
	FUNC4(image, img, len, !patch->is_binary);
	return 0;
}