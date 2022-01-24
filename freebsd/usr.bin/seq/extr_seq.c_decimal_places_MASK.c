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
 int /*<<< orphan*/  decimal_point ; 
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(const char *number)
{
	int places = 0;
	char *dp;

	/* look for a decimal point */
	if ((dp = FUNC2(number, decimal_point))) {
		dp += FUNC1(decimal_point);

		while (FUNC0((unsigned char)*dp++))
			places++;
	}
	return (places);
}