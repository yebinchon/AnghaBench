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
typedef  scalar_t__ u_int ;

/* Variables and functions */
 double FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,double,double) ; 

__attribute__((used)) static void
FUNC2(u_int size, int count)
{
	double dt;

	dt = FUNC0();
	FUNC1("%8.1f usec/IO = %8.1f Mbytes/s\n",
	    dt * 1000000.0 / count, (double)size * count / dt / (1024 * 1024));
}