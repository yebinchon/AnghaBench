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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

int
FUNC2(device_t dev)
{
	const char *status;

	status = FUNC0(dev);
	if (status == NULL || FUNC1(status, "okay") == 0 ||
	    FUNC1(status, "ok") == 0)
		return (1);
	
	return (0);
}