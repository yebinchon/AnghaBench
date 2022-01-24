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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  gpio_prop ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  delay_prop ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int*,int*,int*) ; 
 int GPIO_PIN_HIGH ; 
 int GPIO_PIN_LOW ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	pcell_t gpio_prop[4];
	pcell_t delay_prop[3];
	phandle_t node, gpio_node;
	device_t gpio;
	uint32_t pin, flags;
	uint32_t pin_value;

	node = FUNC10(dev);
	if (FUNC5(node, "snps,reset-gpio",
	    gpio_prop, sizeof(gpio_prop)) <= 0)
		return (0);

	if (FUNC5(node, "snps,reset-delays-us",
	    delay_prop, sizeof(delay_prop)) <= 0) {
		FUNC8(dev,
		    "Wrong property for snps,reset-delays-us");
		return (ENXIO);
	}

	gpio_node = FUNC7(gpio_prop[0]);
	if ((gpio = FUNC4(gpio_prop[0])) == NULL) {
		FUNC8(dev,
		    "Can't find gpio controller for phy reset\n");
		return (ENXIO);
	}

	if (FUNC1(gpio, node, gpio_node,
	    FUNC9(gpio_prop) - 1,
	    gpio_prop + 1, &pin, &flags) != 0) {
		FUNC8(dev, "Can't map gpio for phy reset\n");
		return (ENXIO);
	}

	pin_value = GPIO_PIN_LOW;
	if (FUNC6(node, "snps,reset-active-low"))
		pin_value = GPIO_PIN_HIGH;

	FUNC3(gpio, pin, GPIO_PIN_OUTPUT);
	FUNC2(gpio, pin, pin_value);
	FUNC0(delay_prop[0] * 5);
	FUNC2(gpio, pin, !pin_value);
	FUNC0(delay_prop[1] * 5);
	FUNC2(gpio, pin, pin_value);
	FUNC0(delay_prop[2] * 5);

	return (0);
}