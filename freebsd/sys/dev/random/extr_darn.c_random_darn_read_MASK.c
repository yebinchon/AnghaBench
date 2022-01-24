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
typedef  int /*<<< orphan*/  u_long ;
typedef  int u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u_int
FUNC2(void *buf, u_int c)
{
	u_long *b, rndval;
	u_int count;

	FUNC0(c % sizeof(*b) == 0, ("partial read %d", c));
	b = buf;
	for (count = c; count > 0; count -= sizeof(*b)) {
		if (FUNC1(&rndval) == 0)
			break;
		*b++ = rndval;
	}
	return (c - count);
}