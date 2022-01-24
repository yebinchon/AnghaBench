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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static char *
FUNC4(char *p)
{
	int len = FUNC3(p) + 1;
	char *q = (char *)FUNC1(len);

	if (!q) {
		FUNC0("malloc");
		/*NOTREACHED*/
	}

	FUNC2(q, p, len);
	return q;
}