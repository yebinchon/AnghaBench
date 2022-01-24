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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 unsigned long FUNC1 (char const*,char**,int) ; 

__attribute__((used)) static int FUNC2(const char *line, unsigned long *p)
{
	char *ptr;

	if (!FUNC0(*line))
		return 0;
	*p = FUNC1(line, &ptr, 10);
	return ptr - line;
}