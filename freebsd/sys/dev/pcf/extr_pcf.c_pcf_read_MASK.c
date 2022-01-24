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
struct pcf_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct pcf_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESO ; 
 int /*<<< orphan*/  FUNC1 (struct pcf_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcf_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct pcf_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct pcf_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct pcf_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pcf_softc*) ; 
 int FUNC8 (struct pcf_softc*) ; 

int
FUNC9(device_t dev, char *buf, int len, int *read, int last,
	 int delay /* us */)
{
	struct pcf_softc *sc = FUNC0(dev);
	int bytes, error = 0;
#ifdef PCFDEBUG
	char *obuf = buf;

	device_printf(dev, " << reading %d bytes\n", len);
#endif

	FUNC1(sc);
	/* trig the bus to get the first data byte in S0 */
	if (len) {
		if (len == 1 && last)
			/* just one byte to read */
			FUNC6(sc, ESO);		/* no ack */

		FUNC4(sc);
	}

	bytes = 0;
	while (len) {

		/* XXX delay needed here */

		/* wait for trigged byte */
		if ((error = FUNC8(sc))) {
			FUNC7(sc);
			goto error;
		}

		if (len == 1 && last)
			/* ok, last data byte already in S0, no I2C activity
			 * on next pcf_get_S0() */
			FUNC7(sc);

		else if (len == 2 && last)
			/* next trigged byte with no ack */
			FUNC6(sc, ESO);

		/* receive byte, trig next byte */
		*buf++ = FUNC5(sc);

		len --;
		bytes ++;
	}

error:
	*read = bytes;
	FUNC2(sc);

#ifdef PCFDEBUG
	device_printf(dev, " << %d bytes read (%d): %#x%s\n", bytes, error,
		      (unsigned)obuf[0], bytes > 1? "...": "");
#endif

	return (error);
}