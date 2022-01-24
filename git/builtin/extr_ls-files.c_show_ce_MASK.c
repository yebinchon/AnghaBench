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
struct repository {int /*<<< orphan*/  index; } ;
struct dir_struct {int dummy; } ;
struct cache_entry {char* ce_mode; int /*<<< orphan*/  oid; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  abbrev ; 
 int /*<<< orphan*/  FUNC2 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (struct cache_entry const*,char const*) ; 
 scalar_t__ FUNC7 (struct repository*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ max_prefix_len ; 
 int /*<<< orphan*/  pathspec ; 
 int /*<<< orphan*/  FUNC9 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ps_matched ; 
 scalar_t__ recurse_submodules ; 
 int /*<<< orphan*/  show_stage ; 
 int /*<<< orphan*/  FUNC11 (struct repository*,struct dir_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct cache_entry const*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 

__attribute__((used)) static void FUNC15(struct repository *repo, struct dir_struct *dir,
		    const struct cache_entry *ce, const char *fullname,
		    const char *tag)
{
	if (max_prefix_len > FUNC12(fullname))
		FUNC3("git ls-files: internal error - cache entry not superset of prefix");

	if (recurse_submodules && FUNC1(ce->ce_mode) &&
	    FUNC7(repo, ce->name)) {
		FUNC11(repo, dir, ce->name);
	} else if (FUNC8(repo->index, &pathspec, fullname, FUNC12(fullname),
				  max_prefix_len, ps_matched,
				  FUNC0(ce->ce_mode) ||
				  FUNC1(ce->ce_mode))) {
		tag = FUNC6(ce, tag);

		if (!show_stage) {
			FUNC5(tag, stdout);
		} else {
			FUNC10("%s%06o %s %d\t",
			       tag,
			       ce->ce_mode,
			       FUNC4(&ce->oid, abbrev),
			       FUNC2(ce));
		}
		FUNC13(repo->index, ce, fullname);
		FUNC14(fullname);
		FUNC9(ce);
	}
}