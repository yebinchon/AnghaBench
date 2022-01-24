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
 int /*<<< orphan*/  KDSBORDER ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(char *arg)
{
	int color;

	color = FUNC2(arg);
	if (color == -1) {
		FUNC4();
		FUNC1(1, "invalid color '%s'", arg);
	}
	if (FUNC3(0, KDSBORDER, color) != 0) {
		FUNC4();
		FUNC0(1, "ioctl(KD_SBORDER)");
	}
}