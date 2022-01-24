#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pack_list {struct pack_list* next; TYPE_1__* remaining_objects; } ;
struct llist_item {struct llist_item* next; int /*<<< orphan*/  oid; } ;
struct TYPE_2__ {struct llist_item* front; } ;

/* Variables and functions */
 int /*<<< orphan*/  all_objects ; 
 struct pack_list* altodb_packs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct llist_item* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct llist_item*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct pack_list* local_packs ; 

__attribute__((used)) static void FUNC3(void)
{
	struct pack_list *pl = local_packs;
	struct llist_item *hint, *l;

	FUNC0(&all_objects);

	while (pl) {
		hint = NULL;
		l = pl->remaining_objects->front;
		while (l) {
			hint = FUNC1(all_objects,
							  l->oid, hint);
			l = l->next;
		}
		pl = pl->next;
	}
	/* remove objects present in remote packs */
	pl = altodb_packs;
	while (pl) {
		FUNC2(all_objects, pl->remaining_objects);
		pl = pl->next;
	}
}