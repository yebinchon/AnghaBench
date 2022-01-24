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
struct notes_tree {char* update_ref; char* ref; } ;

/* Variables and functions */
 int NOTES_INIT_WRITABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct notes_tree default_notes_tree ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static struct notes_tree *FUNC4(const char *subcommand,
					   int flags)
{
	struct notes_tree *t;
	const char *ref;
	FUNC2(NULL, NULL, NULL, flags);
	t = &default_notes_tree;

	ref = (flags & NOTES_INIT_WRITABLE) ? t->update_ref : t->ref;
	if (!FUNC3(ref, "refs/notes/"))
		/*
		 * TRANSLATORS: the first %s will be replaced by a git
		 * notes command: 'add', 'merge', 'remove', etc.
		 */
		FUNC1(FUNC0("refusing to %s notes in %s (outside of refs/notes/)"),
		    subcommand, ref);
	return t;
}