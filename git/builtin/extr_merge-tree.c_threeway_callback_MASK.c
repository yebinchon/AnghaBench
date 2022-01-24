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
struct traverse_info {int dummy; } ;
struct name_entry {int /*<<< orphan*/  mode; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct name_entry*,struct name_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct traverse_info*,struct name_entry*,struct name_entry*) ; 
 scalar_t__ FUNC4 (struct name_entry*,struct name_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct traverse_info*,struct name_entry*) ; 

__attribute__((used)) static int FUNC6(int n, unsigned long mask, unsigned long dirmask, struct name_entry *entry, struct traverse_info *info)
{
	/* Same in both? */
	if (FUNC4(entry+1, entry+2) || FUNC1(entry+1, entry+2)) {
		/* Modified, added or removed identically */
		FUNC3(info, NULL, entry+1);
		return mask;
	}

	if (FUNC4(entry+0, entry+1)) {
		if (!FUNC2(&entry[2].oid) && !FUNC0(entry[2].mode)) {
			/* We did not touch, they modified -- take theirs */
			FUNC3(info, entry+1, entry+2);
			return mask;
		}
		/*
		 * If we did not touch a directory but they made it
		 * into a file, we fall through and unresolved()
		 * recurses down.  Likewise for the opposite case.
		 */
	}

	if (FUNC4(entry+0, entry+2) || FUNC1(entry+0, entry+2)) {
		/* We added, modified or removed, they did not touch -- take ours */
		FUNC3(info, NULL, entry+1);
		return mask;
	}

	FUNC5(info, entry);
	return mask;
}