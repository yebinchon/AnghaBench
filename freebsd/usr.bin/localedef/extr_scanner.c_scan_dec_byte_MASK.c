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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(void)
{
	int	c1, c2, c3;
	int	b;

	c1 = FUNC1();
	if (!FUNC0(c1)) {
		FUNC3("malformed decimal digit");
		return (0);
	}
	b = c1 - '0';
	c2 = FUNC1();
	if (!FUNC0(c2)) {
		FUNC3("malformed decimal digit");
		return (0);
	}
	b *= 10;
	b += (c2 - '0');
	c3 = FUNC1();
	if (!FUNC0(c3)) {
		FUNC2(c3);
	} else {
		b *= 10;
		b += (c3 - '0');
	}
	return (b);
}