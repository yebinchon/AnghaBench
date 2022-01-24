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
struct commit {TYPE_1__* parents; } ;
struct TYPE_2__ {struct commit* item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit*) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*,struct commit*) ; 

__attribute__((used)) static int FUNC2(struct commit *c)
{
	int i = 0;
	while (c) {
		struct commit *p;
		if (!FUNC0(c))
			break;
		if (!c->parents)
			break;
		p = c->parents->item;
		if (!FUNC0(p)) {
			FUNC1(c, p);
			i++;
		}
		else
			break;
		c = p;
	}
	return i;
}