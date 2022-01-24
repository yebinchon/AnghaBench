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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ BIT_SET ; 
 int /*<<< orphan*/  CLOCK_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct cdev *dev, char *buf, ssize_t bits)
{
	struct pcfclock_data *sc = dev->si_drv1;
	device_t pcfclockdev = sc->dev;
	device_t ppbus = FUNC2(pcfclockdev);
	int i;
	char waitfor;
	int offset;

	/* one byte per four bits */
	FUNC1(buf, ((bits + 3) >> 2) + 1);

	waitfor = 100;
	for (i = 0; i <= bits; i++) {
		/* wait for clock, maximum (waitfor*100) usec */
		while (!CLOCK_OK && --waitfor > 0)
			FUNC0(100);

		/* timed out? */
		if (!waitfor)
			return (EIO);

		waitfor = 100; /* reload */

		/* give it some time */
		FUNC0(500);

		/* calculate offset into buffer */
		offset = i >> 2;
		buf[offset] <<= 1;

		if (BIT_SET)
			buf[offset] |= 1;
	}

	return (0);
}