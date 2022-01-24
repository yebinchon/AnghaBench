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
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 long FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long
FUNC3(char *str, int opt)
{
	if (!FUNC1(str))
		FUNC0(EX_DATAERR, "-%c argument must be numeric "
		     "when setting defaults: %s", (char)opt, str);
	return FUNC2(str, NULL, 0);
}