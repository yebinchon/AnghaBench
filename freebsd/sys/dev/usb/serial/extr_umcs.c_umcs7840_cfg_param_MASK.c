#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct umcs7840_softc {TYPE_1__* sc_ports; } ;
struct ucom_softc {size_t sc_portno; struct umcs7840_softc* sc_parent; } ;
struct termios {int c_cflag; int /*<<< orphan*/  c_ospeed; } ;
struct TYPE_2__ {size_t sc_lcr; size_t sc_mcr; } ;

/* Variables and functions */
 int CDSR_OFLOW ; 
 int CDTR_IFLOW ; 
 int CRTSCTS ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 size_t MCS7840_UART_LCR_DATALEN5 ; 
 size_t MCS7840_UART_LCR_DATALEN6 ; 
 size_t MCS7840_UART_LCR_DATALEN7 ; 
 size_t MCS7840_UART_LCR_DATALEN8 ; 
 size_t MCS7840_UART_LCR_DATALENMASK ; 
 size_t MCS7840_UART_LCR_PARITYEVEN ; 
 size_t MCS7840_UART_LCR_PARITYMASK ; 
 size_t MCS7840_UART_LCR_PARITYODD ; 
 size_t MCS7840_UART_LCR_PARITYON ; 
 size_t MCS7840_UART_LCR_STOPB1 ; 
 size_t MCS7840_UART_LCR_STOPB2 ; 
 size_t MCS7840_UART_MCR_CTSRTS ; 
 size_t MCS7840_UART_MCR_DTRDSR ; 
 int /*<<< orphan*/  MCS7840_UART_REG_LCR ; 
 int /*<<< orphan*/  MCS7840_UART_REG_MCR ; 
 int PARENB ; 
 int PARODD ; 
 int /*<<< orphan*/  FUNC1 (struct umcs7840_softc*,size_t,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct umcs7840_softc*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct ucom_softc *ucom, struct termios *t)
{
	struct umcs7840_softc *sc = ucom->sc_parent;
	uint8_t pn = ucom->sc_portno;
	uint8_t lcr = sc->sc_ports[pn].sc_lcr;
	uint8_t mcr = sc->sc_ports[pn].sc_mcr;

	FUNC0("Port %d config:\n", pn);
	if (t->c_cflag & CSTOPB) {
		FUNC0("  2 stop bits\n");
		lcr |= MCS7840_UART_LCR_STOPB2;
	} else {
		lcr |= MCS7840_UART_LCR_STOPB1;
		FUNC0("  1 stop bit\n");
	}

	lcr &= ~MCS7840_UART_LCR_PARITYMASK;
	if (t->c_cflag & PARENB) {
		lcr |= MCS7840_UART_LCR_PARITYON;
		if (t->c_cflag & PARODD) {
			lcr = MCS7840_UART_LCR_PARITYODD;
			FUNC0("  parity on - odd\n");
		} else {
			lcr = MCS7840_UART_LCR_PARITYEVEN;
			FUNC0("  parity on - even\n");
		}
	} else {
		lcr &= ~MCS7840_UART_LCR_PARITYON;
		FUNC0("  parity off\n");
	}

	lcr &= ~MCS7840_UART_LCR_DATALENMASK;
	switch (t->c_cflag & CSIZE) {
	case CS5:
		lcr |= MCS7840_UART_LCR_DATALEN5;
		FUNC0("  5 bit\n");
		break;
	case CS6:
		lcr |= MCS7840_UART_LCR_DATALEN6;
		FUNC0("  6 bit\n");
		break;
	case CS7:
		lcr |= MCS7840_UART_LCR_DATALEN7;
		FUNC0("  7 bit\n");
		break;
	case CS8:
		lcr |= MCS7840_UART_LCR_DATALEN8;
		FUNC0("  8 bit\n");
		break;
	}

	if (t->c_cflag & CRTSCTS) {
		mcr |= MCS7840_UART_MCR_CTSRTS;
		FUNC0("  CTS/RTS\n");
	} else
		mcr &= ~MCS7840_UART_MCR_CTSRTS;

	if (t->c_cflag & (CDTR_IFLOW | CDSR_OFLOW)) {
		mcr |= MCS7840_UART_MCR_DTRDSR;
		FUNC0("  DTR/DSR\n");
	} else
		mcr &= ~MCS7840_UART_MCR_DTRDSR;

	sc->sc_ports[pn].sc_lcr = lcr;
	FUNC1(sc, pn, MCS7840_UART_REG_LCR, sc->sc_ports[pn].sc_lcr);
	FUNC0("Port %d LCR=%02x\n", pn, sc->sc_ports[pn].sc_lcr);

	sc->sc_ports[pn].sc_mcr = mcr;
	FUNC1(sc, pn, MCS7840_UART_REG_MCR, sc->sc_ports[pn].sc_mcr);
	FUNC0("Port %d MCR=%02x\n", pn, sc->sc_ports[pn].sc_mcr);

	FUNC2(sc, pn, t->c_ospeed);
}