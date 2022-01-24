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
 int AUTOFEED ; 
 int /*<<< orphan*/  PPB_TIMEOUT ; 
 int SELECTIN ; 
 int STROBE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nACK ; 
 int nINIT ; 
 int FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int
FUNC5(device_t bus, char *buffer)
{
	char nibble[2];
	int i, error;

	for (i = 0; i < 2; i++) {

		/* Event 7 - ready to take data (nAUTO low) */
		FUNC4(bus, (nINIT | AUTOFEED) & ~(STROBE | SELECTIN));

		/* Event 8 - peripheral writes the first nibble */

		/* Event 9 - peripheral set nAck low */
		if ((error = FUNC0(bus, nACK, 0))) {
			FUNC2(bus, PPB_TIMEOUT, 9);
			goto error;
		}

		/* read nibble */
		nibble[i] = FUNC3(bus);

		/* Event 10 - ack, nibble received */
		FUNC4(bus, nINIT & ~(AUTOFEED | STROBE | SELECTIN));

		/* Event 11 - wait ack from peripherial */
		if ((error = FUNC0(bus, nACK, nACK))) {
			FUNC2(bus, PPB_TIMEOUT, 11);
			goto error;
		}
	}

	*buffer = ((FUNC1(nibble[1]) << 4) & 0xf0) |
				(FUNC1(nibble[0]) & 0x0f);

error:
	return (error);
}