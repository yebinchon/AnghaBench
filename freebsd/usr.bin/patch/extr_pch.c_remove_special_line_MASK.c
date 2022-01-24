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
 int EOF ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pfp ; 

__attribute__((used)) static bool
FUNC2(void)
{
	int	c;

	c = FUNC0(pfp);
	if (c == '\\') {
		do {
			c = FUNC0(pfp);
		} while (c != EOF && c != '\n');

		return true;
	}
	if (c != EOF)
		FUNC1(pfp, -1, SEEK_CUR);

	return false;
}