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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ flag_efi ; 
 scalar_t__ flag_format ; 
 scalar_t__ flag_parse ; 
 scalar_t__ flag_unix ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char**) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(int argc, char **argv)
{

	FUNC3(argc, argv);
	if (flag_unix)
		FUNC0();
	else if (flag_efi)
		FUNC4();
	else if (flag_format)
		FUNC1();
	else if (flag_parse)
		FUNC2();
}