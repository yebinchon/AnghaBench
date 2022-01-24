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
typedef  size_t uint8_t ;

/* Variables and functions */
 size_t FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char** raid_levels ; 

char *FUNC2(uint8_t raid_level)
{
	FUNC1("IN\n");
	if (raid_level < FUNC0(raid_levels))
		return raid_levels[raid_level];
	FUNC1("OUT\n");

	return " ";
}