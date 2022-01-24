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
union cf {float f; double c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 double FLT_EPSILON ; 
 float FUNC1 (float) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(const char *name, float expected, union cf v)
{
	double eps;

	eps = FUNC1(expected - v.f) / expected;
	FUNC0(eps <= FLT_EPSILON);
	if (eps > FLT_EPSILON) {
		FUNC2("Error in %s\n", name);
		FUNC2("Got      0x%08x %12g\n", v.c, v.f);
		v.f = expected;
		FUNC2("Expected 0x%08x %12g (%.15lg)\n", v.c, v.f, expected);
		FUNC2("Epsilon=%lg, rather than %g\n", eps, FLT_EPSILON);
	}
}