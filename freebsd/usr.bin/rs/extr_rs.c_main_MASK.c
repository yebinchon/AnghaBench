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
 int SHAPEONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int flags ; 
 int /*<<< orphan*/  FUNC1 (int,char**) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int icols ; 
 int irows ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

int
FUNC6(int argc, char *argv[])
{
	FUNC1(argc, argv);
	FUNC2();
	if (flags & SHAPEONLY) {
		FUNC4("%d %d\n", irows, icols);
		FUNC0(0);
	}
	FUNC3();
	FUNC5();
	FUNC0(0);
}