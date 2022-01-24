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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(void)
{
	int	c1, c2;
	int	v;

	c1 = FUNC2();
	if (!FUNC1(c1)) {
		FUNC3("malformed hex digit");
		return (0);
	}
	c2 = FUNC2();
	if (!FUNC1(c2)) {
		FUNC3("malformed hex digit");
		return (0);
	}
	v = ((FUNC0(c1) << 4) | FUNC0(c2));
	return (v);
}