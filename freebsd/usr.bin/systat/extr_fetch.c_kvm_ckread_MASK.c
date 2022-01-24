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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*) ; 
 int /*<<< orphan*/  kd ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ verbose ; 

int
FUNC2(void *a, void *b, int l)
{
	if (FUNC1(kd, (u_long)a, b, l) != l) {
		if (verbose)
			FUNC0("error reading kmem at %p", a);
		return (0);
	}
	else
		return (1);
}