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
 int NSHUFF ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  randseed ; 

void
FUNC1(u_long seed)
{
	int i;

	randseed = seed;
	for (i = 0; i < NSHUFF; i++)
		(void)FUNC0();
}