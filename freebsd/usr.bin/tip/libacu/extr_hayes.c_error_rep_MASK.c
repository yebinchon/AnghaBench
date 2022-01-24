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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(char c)
{
	FUNC0("\n\r");
	switch (c) {

	case '0':
		FUNC0("OK");
		break;

	case '1':
		FUNC0("CONNECT");
		break;

	case '2':
		FUNC0("RING");
		break;

	case '3':
		FUNC0("NO CARRIER");
		break;

	case '4':
		FUNC0("ERROR in input");
		break;

	case '5':
		FUNC0("CONNECT 1200");
		break;

	default:
		FUNC0("Unknown Modem error: %c (0x%x)", c, c);
	}
	FUNC0("\n\r");
	return;
}