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
struct merge_list {struct merge_list* next; } ;

/* Variables and functions */
 struct merge_list* merge_result ; 
 int /*<<< orphan*/  FUNC0 (struct merge_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct merge_list*) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct merge_list *walk;

	walk = merge_result;
	while (walk) {
		FUNC1(walk);
		FUNC0(walk);
		walk = walk->next;
	}
}