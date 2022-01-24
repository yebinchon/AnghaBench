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
 scalar_t__ decimal ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*,int) ; 

void
FUNC2(int len, void *p)
{
	unsigned char *cp;

	if (FUNC1(stdout, p, len)) {
		FUNC0("\n");
		return;
	}

	FUNC0("%d ", len);
	cp = p;
	while (len--)
		if (decimal)
			FUNC0(" %d", *cp++);
		else
			FUNC0(" %02x", *cp++);
	FUNC0("\n");
}