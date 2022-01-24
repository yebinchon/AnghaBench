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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * positions ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void
FUNC3(size_t n)
{
	static size_t npos;
	size_t oldnpos;

	/* Grow the positions array to at least the specified size. */
	if (n > npos) {
		oldnpos = npos;
		if (npos == 0)
			npos = n;
		while (n > npos)
			npos *= 2;
		if ((positions = FUNC2(positions, npos)) == NULL)
			FUNC0(1, "realloc");
		FUNC1((char *)positions + oldnpos, 0, npos - oldnpos);
	}
}