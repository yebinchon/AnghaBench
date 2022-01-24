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
struct pcfclock_data {int /*<<< orphan*/  dev; } ;
struct cdev {struct pcfclock_data* si_drv1; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AFC_HI ; 
 int /*<<< orphan*/  AFC_LO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void
FUNC4(struct cdev *dev, unsigned char command)
{
	struct pcfclock_data *sc = dev->si_drv1;
	device_t pcfclockdev = sc->dev;
	device_t ppbus = FUNC2(pcfclockdev);
	unsigned char ctr = 14;
	char i;

	for (i = 0; i <= 7; i++) {
		FUNC3(ppbus, i);
		FUNC0(i & 1 ? AFC_HI : AFC_LO);
		FUNC1(3000);
	}
	FUNC3(ppbus, command);
	FUNC0(AFC_LO);
	FUNC1(3000);
	FUNC0(AFC_HI);
}