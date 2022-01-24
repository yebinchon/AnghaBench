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
typedef  int int8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,int) ; 

__attribute__((used)) static int
FUNC2(const char* b_name, int8_t up)
{
	if (FUNC0(b_name) < 0)
		return (-1);

	if (up == 1 && (FUNC1(b_name, 1) < 0))
		return (-1);

	/*
	 * Do not create a new bridge entry here -
	 * wait until the mibII module notifies us.
	 */
	return (0);
}