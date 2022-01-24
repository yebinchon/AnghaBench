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
struct llist {scalar_t__ size; int /*<<< orphan*/ * back; int /*<<< orphan*/  front; } ;

/* Variables and functions */
 struct llist* FUNC0 (int) ; 

__attribute__((used)) static inline void FUNC1(struct llist **list)
{
	*list = FUNC0(sizeof(struct llist));
	(*list)->front = *((*list)->back = NULL);
	(*list)->size = 0;
}