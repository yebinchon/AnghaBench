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
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 

int
FUNC2(const char *namea, const char *nameb)
{
	int deva, devb;

	if (FUNC1(namea, nameb) == 0)
		return (1);
	deva = FUNC0(namea);
	if (deva == 0)
		return (0);
	devb = FUNC0(nameb);
	if (devb == 0)
		return (0);
	if (FUNC1(namea + deva, nameb + devb) == 0)
		return (1);
	return (0);
}