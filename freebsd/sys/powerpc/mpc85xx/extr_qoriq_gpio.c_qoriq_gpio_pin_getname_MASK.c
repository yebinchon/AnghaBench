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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int GPIOMAXNAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint32_t pin, char *name)
{

	if (!FUNC0(pin))
		return (EINVAL);

	FUNC2(name, GPIOMAXNAME, "qoriq_gpio%d.%d",
	    FUNC1(dev), pin);
	name[GPIOMAXNAME-1] = '\0';

	return (0);
}