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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char*,char*) ; 

__attribute__((used)) static void
FUNC2(uint8_t level)
{
	uint8_t retval;

	while (1) {

		retval = FUNC1(level, "Select Audio Device Model",
		    "1) Generic Audio Device\n"
		    "x) Return to previous menu\n");

		switch (retval) {
		case 0:
			break;
		case 1:
			FUNC0(level + 1);
			break;
		default:
			return;
		}
	}
}