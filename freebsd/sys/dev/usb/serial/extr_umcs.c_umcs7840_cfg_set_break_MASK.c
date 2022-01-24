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
struct TYPE_2__ {int /*<<< orphan*/  sc_lcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*) ; 
 int /*<<< orphan*/  MCS7840_UART_LCR_BREAK ; 
 int /*<<< orphan*/  MCS7840_UART_REG_LCR ; 
 int /*<<< orphan*/  FUNC1 (struct umcs7840_softc*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ucom_softc *ucom, uint8_t onoff)
{
	struct umcs7840_softc *sc = ucom->sc_parent;
	uint8_t pn = ucom->sc_portno;

	if (onoff)
		sc->sc_ports[pn].sc_lcr |= MCS7840_UART_LCR_BREAK;
	else
		sc->sc_ports[pn].sc_lcr &= ~MCS7840_UART_LCR_BREAK;

	FUNC1(sc, pn, MCS7840_UART_REG_LCR, sc->sc_ports[pn].sc_lcr);
	FUNC0("Port %d BREAK set to: %s\n", pn, onoff ? "on" : "off");
}