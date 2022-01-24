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
 int FUNC1 (int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static phandle_t
FUNC4(char *dev, size_t devsz)
{
	char buf[sizeof("serial")];
	phandle_t input;

	if (!FUNC2("hw.uart.dbgport", dev, devsz))
		return (-1);
	if ((input = FUNC0(dev)) == -1)
		return (-1);
	if (FUNC1(input, "device_type", buf, sizeof(buf)) == -1)
		return (-1);
	if (FUNC3(buf, "serial") != 0)
		return (-1);
	return (input);
}