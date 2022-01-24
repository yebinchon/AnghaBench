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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(stderr,
"Usage: bthidcontrol options command\n" \
"Where options are:\n"
"	-a bdaddr	specify bdaddr\n" \
"	-c file		specify path to the bthidd config file\n" \
"	-H file		specify path to the bthidd HIDs file\n" \
"	-h		display usage and quit\n" \
"	-v		be verbose\n" \
"	command		one of the supported commands\n");
	FUNC0(255);
}