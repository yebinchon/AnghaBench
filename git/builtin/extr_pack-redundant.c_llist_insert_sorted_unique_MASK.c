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
struct llist_item {struct llist_item* next; int /*<<< orphan*/  oid; } ;
struct llist {struct llist_item* front; } ;

/* Variables and functions */
 struct llist_item* FUNC0 (struct llist*,struct llist_item*,struct object_id const*) ; 
 struct llist_item* FUNC1 (struct llist*,struct object_id const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct object_id const*) ; 

__attribute__((used)) static inline struct llist_item *FUNC3(struct llist *list,
			const struct object_id *oid, struct llist_item *hint)
{
	struct llist_item *prev = NULL, *l;

	l = (hint == NULL) ? list->front : hint;
	while (l) {
		int cmp = FUNC2(l->oid, oid);
		if (cmp > 0) { /* we insert before this entry */
			return FUNC0(list, prev, oid);
		}
		if (!cmp) { /* already exists */
			return l;
		}
		prev = l;
		l = l->next;
	}
	/* insert at the end */
	return FUNC1(list, oid);
}