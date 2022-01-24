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
struct stat {int dummy; } ;
struct patch {scalar_t__ is_delete; int /*<<< orphan*/  resultsize; int /*<<< orphan*/  result; scalar_t__ direct_to_threeway; } ;
struct image {int /*<<< orphan*/  line_allocated; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct cache_entry {int dummy; } ;
struct apply_state {int /*<<< orphan*/  threeway; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct apply_state*,struct patch*) ; 
 scalar_t__ FUNC2 (struct apply_state*,struct image*,struct patch*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct apply_state*,struct image*,struct patch*,struct stat*,struct cache_entry const*) ; 
 scalar_t__ FUNC6 (struct apply_state*,struct image*,struct patch*,struct stat*,struct cache_entry const*) ; 

__attribute__((used)) static int FUNC7(struct apply_state *state, struct patch *patch,
		      struct stat *st, const struct cache_entry *ce)
{
	struct image image;

	if (FUNC5(state, &image, patch, st, ce) < 0)
		return -1;

	if (patch->direct_to_threeway ||
	    FUNC2(state, &image, patch) < 0) {
		/* Note: with --reject, apply_fragments() returns 0 */
		if (!state->threeway || FUNC6(state, &image, patch, st, ce) < 0)
			return -1;
	}
	patch->result = image.buf;
	patch->resultsize = image.len;
	FUNC1(state, patch);
	FUNC4(image.line_allocated);

	if (0 < patch->is_delete && patch->resultsize)
		return FUNC3(FUNC0("removal patch leaves file contents"));

	return 0;
}