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
struct index_state {int dummy; } ;
struct dir_entry {int len; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct index_state const*,struct dir_entry*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int max_prefix_len ; 
 int /*<<< orphan*/  pathspec ; 
 int /*<<< orphan*/  ps_matched ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC3 (struct index_state const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const struct index_state *istate,
			   const char *tag, struct dir_entry *ent)
{
	int len = max_prefix_len;

	if (len > ent->len)
		FUNC0("git ls-files: internal error - directory entry not superset of prefix");

	if (!FUNC1(istate, ent, &pathspec, len, ps_matched))
		return;

	FUNC2(tag, stdout);
	FUNC3(istate, NULL, ent->name);
	FUNC4(ent->name);
}