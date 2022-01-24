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
typedef  int /*<<< orphan*/  ecore_atomic_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FALSE ; 
 int TRUE ; 

__attribute__((used)) static inline bool FUNC4(ecore_atomic_t *v, int a, int u)
{
	int c, old;

	c = FUNC1(v);
	for (;;) {
		if (FUNC3(c - a < u))
			return FALSE;

		old = FUNC0((v), c, c - a);
		if (FUNC2(old == c))
			break;
		c = old;
	}

	return TRUE;
}