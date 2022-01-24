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
 int /*<<< orphan*/ ** args ; 
 int cargs ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int nargs ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3(const char *item)
{
	if (nargs + 1 >= cargs) {
		cargs += 16;
		if ((args = FUNC1(args, sizeof(*args) * cargs)) == NULL)
			FUNC0(1, "malloc");
	}
	if ((args[nargs++] = FUNC2(item)) == NULL)
		FUNC0(1, "strdup");
	args[nargs] = NULL;
}