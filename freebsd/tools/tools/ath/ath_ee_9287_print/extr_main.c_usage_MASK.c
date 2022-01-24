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
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2(char *argv[])
{
	FUNC1("Usage: %s <eeprom dump file>\n", argv[0]);
	FUNC1("\n");
	FUNC1("  The eeprom dump file is a text hexdump of an EEPROM.\n");
	FUNC1("  The lines must be formatted as follows:\n");
	FUNC1("  0xAAAA: 0xDD 0xDD 0xDD 0xDD 0xDD 0xDD 0xDD 0xDD\n");
	FUNC1("  where each line must have exactly eight data bytes.\n");
	FUNC0(127);
}