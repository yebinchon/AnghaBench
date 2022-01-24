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
 int MENU_RETURN_NO_LOOP ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  del_list ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void)
{
	FUNC2(&del_list, 0);
	FUNC1(FUNC0("Bye.\n"));
	return MENU_RETURN_NO_LOOP;
}