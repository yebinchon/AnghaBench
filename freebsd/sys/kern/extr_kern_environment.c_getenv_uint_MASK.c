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
typedef  scalar_t__ quad_t ;

/* Variables and functions */
 int FUNC0 (char const*,scalar_t__*) ; 

int
FUNC1(const char *name, unsigned int *data)
{
	quad_t tmp;
	int rval;

	rval = FUNC0(name, &tmp);
	if (rval)
		*data = (unsigned int) tmp;
	return (rval);
}