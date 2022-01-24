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
struct pcf_softc {scalar_t__ pcf_started; } ;

/* Variables and functions */
 int ACK ; 
 int ENI ; 
 int ESO ; 
 int /*<<< orphan*/  FUNC0 (struct pcf_softc*) ; 
 int PIN ; 
 int STO ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcf_softc*,int) ; 

__attribute__((used)) static void
FUNC3(struct pcf_softc *sc)
{

	FUNC0(sc);
#ifdef PCFDEBUG
	device_printf(dev, " >> stop\n");
#endif
	/*
	 * Send STOP condition iff the START condition was previously sent.
	 * STOP is sent only once even if an iicbus_stop() is called after
	 * an iicbus_read()... see pcf_read(): the PCF needs to send the stop
	 * before the last char is read.
	 */
	if (sc->pcf_started) {
		/* set stop condition and enable IT */
		FUNC2(sc, PIN|ESO|ENI|STO|ACK);

		sc->pcf_started = 0;
	}
}