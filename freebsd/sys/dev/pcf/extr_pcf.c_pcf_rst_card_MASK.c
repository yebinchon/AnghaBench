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
typedef  int u_char ;
struct pcf_softc {int pcf_addr; int /*<<< orphan*/  pcf_slave_mode; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ACK ; 
 struct pcf_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int ENI ; 
 int ES1 ; 
 int ESO ; 
#define  IIC_FAST 131 
#define  IIC_FASTEST 130 
#define  IIC_SLOW 129 
#define  IIC_UNKNOWN 128 
 int PCF_DEFAULT_ADDR ; 
 int /*<<< orphan*/  FUNC1 (struct pcf_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcf_softc*) ; 
 int PIN ; 
 int /*<<< orphan*/  SLAVE_RECEIVER ; 
 int /*<<< orphan*/  FUNC3 (struct pcf_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pcf_softc*,int) ; 

int
FUNC5(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
	struct pcf_softc *sc = FUNC0(dev);

	FUNC1(sc);
	if (oldaddr)
		*oldaddr = sc->pcf_addr;

	/* retrieve own address from bus level */
	if (!addr)
		sc->pcf_addr = PCF_DEFAULT_ADDR;
	else
		sc->pcf_addr = addr;

	FUNC4(sc, PIN);				/* initialize S1 */

	/* own address S'O<>0 */
	FUNC3(sc, sc->pcf_addr >> 1);

	/* select clock register */
	FUNC4(sc, PIN|ES1);

	/* select bus speed : 18=90kb, 19=45kb, 1A=11kb, 1B=1.5kb */
	switch (speed) {
	case IIC_SLOW:
		FUNC3(sc,  0x1b); /* XXX Sun uses 0x1f */
		break;

	case IIC_FAST:
		FUNC3(sc,  0x19); /* XXX Sun: 0x1d */
		break;

	case IIC_UNKNOWN:
	case IIC_FASTEST:
	default:
		FUNC3(sc,  0x18); /* XXX Sun: 0x1c */
		break;
	}

	/* set bus on, ack=yes, INT=yes */
	FUNC4(sc, PIN|ESO|ENI|ACK);

	sc->pcf_slave_mode = SLAVE_RECEIVER;
	FUNC2(sc);

	return (0);
}