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
struct object_id {int dummy; } ;
struct merge_parents {int nr; struct merge_parent* item; } ;
struct merge_parent {int /*<<< orphan*/  commit; int /*<<< orphan*/  given; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct object_id*) ; 

__attribute__((used)) static struct merge_parent *FUNC1(struct merge_parents *table,
					      struct object_id *given,
					      struct object_id *commit)
{
	int i;
	for (i = 0; i < table->nr; i++) {
		if (given && !FUNC0(&table->item[i].given, given))
			continue;
		if (commit && !FUNC0(&table->item[i].commit, commit))
			continue;
		return &table->item[i];
	}
	return NULL;
}