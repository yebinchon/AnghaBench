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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  input ; 
 scalar_t__ is_stdin ; 
 int /*<<< orphan*/  lineno ; 
 int /*<<< orphan*/  nextline ; 
 int /*<<< orphan*/  stdin ; 

__attribute__((used)) static int
FUNC1(void)
{
	int	c;

	if (is_stdin)
		c = FUNC0(stdin);
	else
		c = FUNC0(input);
	lineno = nextline;
	if (c == '\n') {
		nextline++;
	}
	return (c);
}