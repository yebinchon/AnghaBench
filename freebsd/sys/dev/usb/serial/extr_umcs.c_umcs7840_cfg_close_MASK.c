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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint16_t ;
struct umcs7840_softc {int dummy; } ;
struct ucom_softc {size_t sc_portno; struct umcs7840_softc* sc_parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  MCS7840_DEV_CONTROLx_RX_DISABLE ; 
 int /*<<< orphan*/  MCS7840_UART_REG_IER ; 
 int /*<<< orphan*/  MCS7840_UART_REG_MCR ; 
 scalar_t__ FUNC1 (struct umcs7840_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* umcs7840_port_registers ; 
 int /*<<< orphan*/  FUNC2 (struct umcs7840_softc*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct umcs7840_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ucom_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ucom_softc*) ; 

__attribute__((used)) static void
FUNC6(struct ucom_softc *ucom)
{
	struct umcs7840_softc *sc = ucom->sc_parent;
	uint16_t pn = ucom->sc_portno;
	uint8_t data;

	FUNC4(ucom);
	FUNC5(ucom);

	FUNC2(sc, pn, MCS7840_UART_REG_MCR, 0);
	FUNC2(sc, pn, MCS7840_UART_REG_IER, 0);

	/* Disable RX */
	if (FUNC1(sc, umcs7840_port_registers[pn].reg_control, &data))
		return;
	data |= MCS7840_DEV_CONTROLx_RX_DISABLE;
	if (FUNC3(sc, umcs7840_port_registers[pn].reg_control, data))
		return;
	FUNC0("Port %d has been closed\n", pn);
}