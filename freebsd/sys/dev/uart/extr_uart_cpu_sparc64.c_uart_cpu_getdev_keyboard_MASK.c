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
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int FUNC1 (int,char*,char*,size_t) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static phandle_t
FUNC3(char *dev, size_t devsz)
{
	char buf[sizeof("serial")];
	phandle_t input;

	if ((input = FUNC0("keyboard")) == -1)
		return (-1);
	if (FUNC1(input, "device_type", buf, sizeof(buf)) == -1)
		return (-1);
	if (FUNC2(buf, "serial") != 0)
		return (-1);
	if (FUNC1(input, "name", dev, devsz) == -1)
		return (-1);
	/*
	 * So far this also matched PS/2 keyboard nodes so make sure it's
	 * one of the SCCs/UARTs known to be used to connect keyboards.
	 */
	if (FUNC2(dev, "su") && FUNC2(dev, "su_pnp") && FUNC2(dev, "zs"))
		return (-1);
	return (input);
}