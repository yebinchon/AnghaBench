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
 int /*<<< orphan*/  MAXLINESIZE ; 
 int /*<<< orphan*/  curline ; 
 int /*<<< orphan*/ * defined ; 
 scalar_t__ linenum ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  where ; 

void
FUNC1(void)
{
	FUNC0(curline, 0, MAXLINESIZE);
	where = curline;
	linenum = 0;
	defined = NULL;
}