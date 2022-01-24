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
struct patch {int dummy; } ;
struct cache_entry {int dummy; } ;
struct apply_state {scalar_t__ check_index; scalar_t__ cached; } ;

/* Variables and functions */
 int SUBMODULE_PATCH_WITHOUT_INDEX ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct cache_entry const*,struct strbuf*) ; 
 scalar_t__ FUNC5 (struct stat*,struct patch*,char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(struct apply_state *state,
			     struct strbuf *buf,
			     const struct cache_entry *ce,
			     struct stat *st,
			     struct patch *patch,
			     const char *name,
			     unsigned expected_mode)
{
	if (state->cached || state->check_index) {
		if (FUNC4(ce, buf))
			return FUNC2(FUNC1("failed to read %s"), name);
	} else if (name) {
		if (FUNC0(expected_mode)) {
			if (ce)
				return FUNC4(ce, buf);
			else
				return SUBMODULE_PATCH_WITHOUT_INDEX;
		} else if (FUNC3(name, FUNC6(name))) {
			return FUNC2(FUNC1("reading from '%s' beyond a symbolic link"), name);
		} else {
			if (FUNC5(st, patch, name, buf))
				return FUNC2(FUNC1("failed to read %s"), name);
		}
	}
	return 0;
}