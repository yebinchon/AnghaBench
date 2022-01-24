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
struct name_entry {scalar_t__ mode; } ;
struct merge_list {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct merge_list*) ; 
 struct merge_list* FUNC2 (int,struct traverse_info const*,struct name_entry*,struct merge_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct traverse_info const*,struct name_entry*) ; 

__attribute__((used)) static void FUNC4(const struct traverse_info *info, struct name_entry n[3])
{
	struct merge_list *entry = NULL;
	int i;
	unsigned dirmask = 0, mask = 0;

	for (i = 0; i < 3; i++) {
		mask |= (1 << i);
		/*
		 * Treat missing entries as directories so that we return
		 * after unresolved_directory has handled this.
		 */
		if (!n[i].mode || FUNC0(n[i].mode))
			dirmask |= (1 << i);
	}

	FUNC3(info, n);

	if (dirmask == mask)
		return;

	if (n[2].mode && !FUNC0(n[2].mode))
		entry = FUNC2(3, info, n + 2, entry);
	if (n[1].mode && !FUNC0(n[1].mode))
		entry = FUNC2(2, info, n + 1, entry);
	if (n[0].mode && !FUNC0(n[0].mode))
		entry = FUNC2(1, info, n + 0, entry);

	FUNC1(entry);
}