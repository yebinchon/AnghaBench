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
struct lock_list_entry {int ll_count; int /*<<< orphan*/ * ll_children; struct lock_list_entry* ll_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int (*) (char const*)) ; 

int
FUNC1(struct lock_list_entry **lock_list,
    int (*prnt)(const char *fmt, ...))
{
	struct lock_list_entry *lle;
	int i, nheld;

	nheld = 0;
	for (lle = *lock_list; lle != NULL; lle = lle->ll_next)
		for (i = lle->ll_count - 1; i >= 0; i--) {
			FUNC0(&lle->ll_children[i], prnt);
			nheld++;
		}
	return (nheld);
}