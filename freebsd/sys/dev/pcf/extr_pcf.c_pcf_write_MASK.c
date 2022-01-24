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
 int IIC_ENOACK ; 
 int /*<<< orphan*/  FUNC1 (struct pcf_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcf_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 scalar_t__ FUNC4 (struct pcf_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pcf_softc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pcf_softc*) ; 

int
FUNC7(device_t dev, const char *buf, int len, int *sent, int timeout /* us */)
{
	struct pcf_softc *sc = FUNC0(dev);
	int bytes, error = 0;

#ifdef PCFDEBUG
	device_printf(dev, " >> writing %d bytes: %#x%s\n", len,
		      (unsigned)buf[0], len > 1? "...": "");
#endif

	bytes = 0;
	FUNC1(sc);
	while (len) {

		FUNC5(sc, *buf++);

		/* wait for the byte to be send */
		if ((error = FUNC6(sc)))
			goto error;

		/* check if ack received */
		if (FUNC4(sc, timeout)) {
			error = IIC_ENOACK;
			goto error;
		}

		len --;
		bytes ++;
	}

error:
	*sent = bytes;
	FUNC2(sc);

#ifdef PCFDEBUG
	device_printf(dev, " >> %d bytes written (%d)\n", bytes, error);
#endif

	return (error);
}