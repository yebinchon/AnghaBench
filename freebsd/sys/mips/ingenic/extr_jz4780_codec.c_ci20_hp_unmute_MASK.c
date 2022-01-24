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
struct codec_softc {int dummy; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int CI20_HP_PIN ; 
 int CI20_HP_PORT ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct codec_softc *sc)
{
	device_t dev;
	int port;
	int err;
	int pin;

	pin = CI20_HP_PIN;
	port = CI20_HP_PORT;

	dev = FUNC3(FUNC2("gpio"), port);
	if (dev == NULL)
		return (0);

	err = FUNC1(dev, pin, GPIO_PIN_OUTPUT);
	if (err != 0) {
		FUNC5(dev, "Cannot configure GPIO pin %d on %s\n",
		    pin, FUNC4(dev));
		return (err);
	}

	err = FUNC0(dev, pin, 0);
	if (err != 0) {
		FUNC5(dev, "Cannot configure GPIO pin %d on %s\n",
		    pin, FUNC4(dev));
		return (err);
	}

	return (0);
}