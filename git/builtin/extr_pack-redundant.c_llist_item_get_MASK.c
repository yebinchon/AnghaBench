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
struct llist_item {struct llist_item* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct llist_item*,int) ; 
 int BLKSIZE ; 
 struct llist_item* free_nodes ; 
 int /*<<< orphan*/  FUNC1 (struct llist_item*) ; 

__attribute__((used)) static inline struct llist_item *FUNC2(void)
{
	struct llist_item *new_item;
	if ( free_nodes ) {
		new_item = free_nodes;
		free_nodes = free_nodes->next;
	} else {
		int i = 1;
		FUNC0(new_item, BLKSIZE);
		for (; i < BLKSIZE; i++)
			FUNC1(&new_item[i]);
	}
	return new_item;
}