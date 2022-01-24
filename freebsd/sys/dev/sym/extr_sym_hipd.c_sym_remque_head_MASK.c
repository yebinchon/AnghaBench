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
struct sym_quehead {struct sym_quehead* flink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sym_quehead*,struct sym_quehead*) ; 

__attribute__((used)) static __inline struct sym_quehead *FUNC1(struct sym_quehead *head)
{
	struct sym_quehead *elem = head->flink;

	if (elem != head)
		FUNC0(head, elem->flink);
	else
		elem = NULL;
	return elem;
}