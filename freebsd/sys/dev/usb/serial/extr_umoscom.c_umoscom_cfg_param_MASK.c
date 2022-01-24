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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct umoscom_softc {int sc_lcr; } ;
struct ucom_softc {struct umoscom_softc* sc_parent; } ;
struct termios {int c_cflag; scalar_t__ c_ospeed; } ;

/* Variables and functions */
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int PARENB ; 
 int PARODD ; 
 int /*<<< orphan*/  UMOSCOM_BAUDHI ; 
 int /*<<< orphan*/  UMOSCOM_BAUDLO ; 
 scalar_t__ UMOSCOM_BAUD_REF ; 
 int /*<<< orphan*/  UMOSCOM_LCR ; 
 int FUNC1 (int) ; 
 int UMOSCOM_LCR_DIVLATCH_EN ; 
 int UMOSCOM_LCR_PARITY_EVEN ; 
 int UMOSCOM_LCR_PARITY_NONE ; 
 int UMOSCOM_LCR_PARITY_ODD ; 
 int UMOSCOM_LCR_STOP_BITS_1 ; 
 int UMOSCOM_LCR_STOP_BITS_2 ; 
 int UMOSCOM_UART_REG ; 
 int /*<<< orphan*/  FUNC2 (struct umoscom_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct ucom_softc *ucom, struct termios *t)
{
	struct umoscom_softc *sc = ucom->sc_parent;
	uint16_t data;

	FUNC0("speed=%d\n", t->c_ospeed);

	data = ((uint32_t)UMOSCOM_BAUD_REF) / ((uint32_t)t->c_ospeed);

	if (data == 0) {
		FUNC0("invalid baud rate!\n");
		return;
	}
	FUNC2(sc, UMOSCOM_LCR,
	    UMOSCOM_LCR_DIVLATCH_EN | UMOSCOM_UART_REG);

	FUNC2(sc, UMOSCOM_BAUDLO,
	    (data & 0xFF) | UMOSCOM_UART_REG);

	FUNC2(sc, UMOSCOM_BAUDHI,
	    ((data >> 8) & 0xFF) | UMOSCOM_UART_REG);

	if (t->c_cflag & CSTOPB)
		data = UMOSCOM_LCR_STOP_BITS_2;
	else
		data = UMOSCOM_LCR_STOP_BITS_1;

	if (t->c_cflag & PARENB) {
		if (t->c_cflag & PARODD)
			data |= UMOSCOM_LCR_PARITY_ODD;
		else
			data |= UMOSCOM_LCR_PARITY_EVEN;
	} else
		data |= UMOSCOM_LCR_PARITY_NONE;

	switch (t->c_cflag & CSIZE) {
	case CS5:
		data |= FUNC1(5);
		break;
	case CS6:
		data |= FUNC1(6);
		break;
	case CS7:
		data |= FUNC1(7);
		break;
	case CS8:
		data |= FUNC1(8);
		break;
	}

	sc->sc_lcr = data;
	FUNC2(sc, UMOSCOM_LCR, data | UMOSCOM_UART_REG);
}