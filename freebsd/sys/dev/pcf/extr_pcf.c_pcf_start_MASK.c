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
typedef  scalar_t__ u_char ;
struct pcf_softc {int pcf_started; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ACK ; 
 struct pcf_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int ESO ; 
 int IIC_EBUSERR ; 
 int IIC_ENOACK ; 
 int /*<<< orphan*/  FUNC1 (struct pcf_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcf_softc*) ; 
 int PIN ; 
 int STA ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int nBB ; 
 int FUNC4 (struct pcf_softc*) ; 
 scalar_t__ FUNC5 (struct pcf_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pcf_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct pcf_softc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pcf_softc*) ; 
 int FUNC9 (struct pcf_softc*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int
FUNC11(device_t dev, u_char slave, int timeout)
{
	struct pcf_softc *sc = FUNC0(dev);
	int error = 0;

	FUNC1(sc);
#ifdef PCFDEBUG
	device_printf(dev, " >> start for slave %#x\n", (unsigned)slave);
#endif
	if ((FUNC4(sc) & nBB) == 0) {
#ifdef PCFDEBUG
		printf("pcf: busy!\n");
#endif
		FUNC2(sc);
		return (IIC_EBUSERR);
	}

	/* set slave address to PCF. Last bit (LSB) must be set correctly
	 * according to transfer direction */
	FUNC6(sc, slave);

	/* START only */
	FUNC7(sc, PIN|ESO|STA|ACK);

	sc->pcf_started = 1;

	/* wait for address sent, polling */
	if ((error = FUNC9(sc)))
		goto error;

	/* check for ACK */
	if (FUNC5(sc, timeout)) {
		error = IIC_ENOACK;
#ifdef PCFDEBUG
		printf("pcf: no ack on start!\n");
#endif
		goto error;
	}

	FUNC2(sc);
	return (0);

error:
	FUNC8(sc);
	FUNC2(sc);
	return (error);
}