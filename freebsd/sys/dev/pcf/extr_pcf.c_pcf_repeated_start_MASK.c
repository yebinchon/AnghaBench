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
struct pcf_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ACK ; 
 struct pcf_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int ESO ; 
 int IIC_ENOACK ; 
 int /*<<< orphan*/  FUNC1 (struct pcf_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcf_softc*) ; 
 int STA ; 
 int STO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 scalar_t__ FUNC4 (struct pcf_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pcf_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct pcf_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pcf_softc*) ; 
 int FUNC8 (struct pcf_softc*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int
FUNC10(device_t dev, u_char slave, int timeout)
{
	struct pcf_softc *sc = FUNC0(dev);
	int error = 0;

	FUNC1(sc);
#ifdef PCFDEBUG
	device_printf(dev, " >> repeated start for slave %#x\n",
		      (unsigned)slave);
#endif
	/* repeated start */
	FUNC6(sc, ESO|STA|STO|ACK);

	/* set slave address to PCF. Last bit (LSB) must be set correctly
	 * according to transfer direction */
	FUNC5(sc, slave);

	/* wait for address sent, polling */
	if ((error = FUNC8(sc)))
		goto error;

	/* check for ack */
	if (FUNC4(sc, timeout)) {
		error = IIC_ENOACK;
#ifdef PCFDEBUG
		printf("pcf: no ack on repeated_start!\n");
#endif
		goto error;
	}

	FUNC2(sc);
	return (0);

error:
	FUNC7(sc);
	FUNC2(sc);
	return (error);
}