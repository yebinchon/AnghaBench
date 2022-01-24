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
struct witness_blessed {int /*<<< orphan*/  b_lock1; int /*<<< orphan*/  b_lock2; } ;
struct witness {int /*<<< orphan*/  w_name; } ;

/* Variables and functions */
 struct witness_blessed* blessed_list ; 
 int FUNC0 (struct witness_blessed*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct witness *w1, struct witness *w2)
{
	int i;
	struct witness_blessed *b;

	for (i = 0; i < FUNC0(blessed_list); i++) {
		b = &blessed_list[i];
		if (FUNC1(w1->w_name, b->b_lock1) == 0) {
			if (FUNC1(w2->w_name, b->b_lock2) == 0)
				return (1);
			continue;
		}
		if (FUNC1(w1->w_name, b->b_lock2) == 0)
			if (FUNC1(w2->w_name, b->b_lock1) == 0)
				return (1);
	}
	return (0);
}