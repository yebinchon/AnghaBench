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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int GPIOTHS_DHT_STARTCYCLE ; 
 int /*<<< orphan*/  GPIO_PIN_HIGH ; 
 int /*<<< orphan*/  GPIO_PIN_INPUT ; 
 int /*<<< orphan*/  GPIO_PIN_LOW ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC4(device_t bus, device_t dev)
{
	int	err;

	err = FUNC2(bus, dev, 0, GPIO_PIN_OUTPUT);
	if (err != 0) {
		FUNC3(dev, "err(GPIOBUS_PIN_SETFLAGS, OUT) = %d\n", err);
		return (err);
	}
	FUNC0(1);

	err = FUNC1(bus, dev, 0, GPIO_PIN_LOW);
	if (err != 0) {
		FUNC3(dev, "err(GPIOBUS_PIN_SET, LOW) = %d\n", err);
		return (err);
	}

	/*
	 * According to specifications we need to wait no more than 18ms
	 * to start data transfer
	 */
	FUNC0(GPIOTHS_DHT_STARTCYCLE);
	err = FUNC1(bus, dev, 0, GPIO_PIN_HIGH);
	if (err != 0) {
		FUNC3(dev, "err(GPIOBUS_PIN_SET, HIGH) = %d\n", err);
		return (err);
	}

	FUNC0(1);
	err = FUNC2(bus, dev, 0, GPIO_PIN_INPUT) ;
	if (err != 0) {
		FUNC3(dev, "err(GPIOBUS_PIN_SETFLAGS, IN) = %d\n", err);
		return (err);
	}

	FUNC0(1);
	return (0);
}