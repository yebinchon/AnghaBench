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
struct pathspec {int nr; TYPE_1__* items; } ;
struct argv_array {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  original; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct argv_array*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct argv_array *args,
			  const struct pathspec *ps) {
	int i;

	for (i = 0; i < ps->nr; i++)
		FUNC0(args, ps->items[i].original);
}