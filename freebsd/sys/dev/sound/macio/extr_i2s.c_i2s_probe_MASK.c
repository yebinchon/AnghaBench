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
typedef  int /*<<< orphan*/  subchildname ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static int
FUNC6(device_t self)
{
	const char 		*name;
	phandle_t		subchild;
	char			subchildname[255];

	name = FUNC3(self);
	if (!name)
		return (ENXIO);

	if (FUNC5(name, "i2s") != 0)
		return (ENXIO);

	/*
	 * Do not attach to "lightshow" I2S devices on Xserves. This controller
	 * is used there to control the LEDs on the front panel, and this
	 * driver can't handle it.
	 */
	subchild = FUNC0(FUNC0(FUNC4(self)));
	if (subchild != 0 && FUNC1(subchild, "name", subchildname,
	    sizeof(subchildname)) > 0 && FUNC5(subchildname, "lightshow") == 0)
		return (ENXIO);
	
	FUNC2(self, "Apple I2S Audio Controller");

	return (0);
}