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
typedef  enum git_attr_direction { ____Placeholder_git_attr_direction } git_attr_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int GIT_ATTR_INDEX ; 
 int direction ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

void FUNC3(enum git_attr_direction new_direction)
{
	if (FUNC2() && new_direction != GIT_ATTR_INDEX)
		FUNC0("non-INDEX attr direction in a bare repo");

	if (new_direction != direction)
		FUNC1();

	direction = new_direction;
}