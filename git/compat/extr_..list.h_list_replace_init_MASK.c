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
struct list_head {struct list_head* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 

__attribute__((used)) static inline void FUNC3(struct list_head *old,
				     struct list_head *newp)
{
	struct list_head *head = old->next;

	FUNC2(old);
	FUNC1(newp, head);
	FUNC0(old);
}