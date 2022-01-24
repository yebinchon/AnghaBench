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
 int MGMT_MODE_EX ; 
 int MGMT_MODE_RD ; 
 int MGMT_MODE_WR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static char *FUNC1(int mode)
{
	static char mode_str[4];

	mode_str[0] = '\0';
	if (mode & MGMT_MODE_RD) {
		FUNC0(mode_str, "r");
	}
	if (mode & MGMT_MODE_WR) {
		FUNC0(mode_str, "w");
	}
	if (mode & MGMT_MODE_EX) {
		FUNC0(mode_str, "x");
	}

	return mode_str;

}