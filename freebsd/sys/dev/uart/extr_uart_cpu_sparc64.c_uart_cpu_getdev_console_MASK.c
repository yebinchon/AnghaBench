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
typedef  int /*<<< orphan*/  inst ;
typedef  int /*<<< orphan*/  input ;
typedef  int ihandle_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (int,char*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static phandle_t
FUNC6(phandle_t options, char *dev, size_t devsz)
{
	char buf[sizeof("serial")];
	ihandle_t inst;
	phandle_t chosen, input, output;

	if (FUNC1(options, "input-device", dev, devsz) == -1)
		return (-1);
	input = FUNC0(dev);
	if (FUNC1(options, "output-device", dev, devsz) == -1)
		return (-1);
	output = FUNC0(dev);
	if (input == -1 || output == -1 ||
	    FUNC2(input, "keyboard") >= 0) {
		if ((chosen = FUNC0("/chosen")) == -1)
			return (-1);
		if (FUNC1(chosen, "stdin", &inst, sizeof(inst)) == -1)
			return (-1);
		if ((input = FUNC3(inst)) == -1)
			return (-1);
		if (FUNC1(chosen, "stdout", &inst, sizeof(inst)) == -1)
			return (-1);
		if ((output = FUNC3(inst)) == -1)
			return (-1);
		FUNC4(dev, devsz, "ttya");
	}
	if (input != output)
		return (-1);
	if (FUNC1(input, "device_type", buf, sizeof(buf)) == -1)
		return (-1);
	if (FUNC5(buf, "serial") != 0)
		return (-1);
	/* For a Serengeti console device point to the bootbus controller. */
	if (FUNC1(input, "name", buf, sizeof(buf)) > 0 &&
	    !FUNC5(buf, "sgcn")) {
		if ((chosen = FUNC0("/chosen")) == -1)
			return (-1);
		if (FUNC1(chosen, "iosram", &input, sizeof(input)) == -1)
			return (-1);
	}
	return (input);
}