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

/* Variables and functions */
 scalar_t__ FUNC0 (double,double) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

void
FUNC2(double d1, double d2)
{

	FUNC1("optimizations don't break the sign of 0",
	     FUNC0(d1 - d2, 0.0)
	     && FUNC0(-d1 + 0.0, 0.0)
	     && FUNC0(-d1 - d2, -0.0)
	     && FUNC0(-(d1 - d2), -0.0)
	     && FUNC0(-d1 - (-d2), 0.0));
}