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
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t) ; 

int
FUNC3(device_t dev, const char *compatible)
{
	const char *compat;
	size_t len;

	if ((compat = FUNC0(dev)) == NULL)
		return (0);

	len = FUNC1(compatible);
	if (FUNC1(compat) == len &&
	    FUNC2(compat, compatible, len) == 0)
		return (1);

	return (0);
}