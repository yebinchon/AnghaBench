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
typedef  int cell_t ;

/* Variables and functions */
 int RB_HALT ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int*,...) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(void *arg, int howto)
{
	cell_t token, status;
	
	if (howto & RB_HALT) {
		token = FUNC1("power-off");
		if (token == -1)
			return;

		FUNC0(token, 2, 1, 0, 0, &status);
	} else {
		token = FUNC1("system-reboot");
		if (token == -1)
			return;

		FUNC0(token, 0, 1, &status);
	}
}