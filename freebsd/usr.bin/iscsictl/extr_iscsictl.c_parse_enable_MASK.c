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
 int ENABLE_OFF ; 
 int ENABLE_ON ; 
 int ENABLE_UNSPECIFIED ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

int
FUNC1(const char *enable)
{
	if (enable == NULL)
		return (ENABLE_UNSPECIFIED);

	if (FUNC0(enable, "on") == 0 ||
	    FUNC0(enable, "yes") == 0)
		return (ENABLE_ON);

	if (FUNC0(enable, "off") == 0 ||
	    FUNC0(enable, "no") == 0)
		return (ENABLE_OFF);

	return (ENABLE_UNSPECIFIED);
}