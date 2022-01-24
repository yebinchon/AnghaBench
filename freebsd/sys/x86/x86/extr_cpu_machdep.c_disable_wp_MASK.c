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
typedef  int u_int ;

/* Variables and functions */
 int CR0_WP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 

bool
FUNC2(void)
{
	u_int cr0;

	cr0 = FUNC1();
	if ((cr0 & CR0_WP) == 0)
		return (false);
	FUNC0(cr0 & ~CR0_WP);
	return (true);
}