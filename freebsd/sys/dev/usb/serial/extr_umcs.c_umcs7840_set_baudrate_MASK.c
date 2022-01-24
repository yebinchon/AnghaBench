#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int usb_error_t ;
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct umcs7840_softc {TYPE_1__* sc_ports; } ;
struct TYPE_4__ {int /*<<< orphan*/  reg_sp; } ;
struct TYPE_3__ {size_t sc_lcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,int /*<<< orphan*/ ,...) ; 
 size_t MCS7840_DEV_SPx_CLOCK_MASK ; 
 size_t MCS7840_UART_LCR_DIVISORS ; 
 int /*<<< orphan*/  MCS7840_UART_REG_DLL ; 
 int /*<<< orphan*/  MCS7840_UART_REG_DLM ; 
 int /*<<< orphan*/  MCS7840_UART_REG_LCR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,size_t*) ; 
 int FUNC2 (struct umcs7840_softc*,int /*<<< orphan*/ ,size_t*) ; 
 TYPE_2__* umcs7840_port_registers ; 
 int FUNC3 (struct umcs7840_softc*,size_t,int /*<<< orphan*/ ,size_t) ; 
 int FUNC4 (struct umcs7840_softc*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static usb_error_t
FUNC5(struct umcs7840_softc *sc, uint8_t portno, uint32_t rate)
{
	usb_error_t err;
	uint16_t divisor;
	uint8_t clk;
	uint8_t data;

	if (FUNC1(rate, &divisor, &clk)) {
		FUNC0("Port %d bad speed: %d\n", portno, rate);
		return (-1);
	}
	if (divisor == 0 || (clk & MCS7840_DEV_SPx_CLOCK_MASK) != clk) {
		FUNC0("Port %d bad speed calculation: %d\n", portno, rate);
		return (-1);
	}
	FUNC0("Port %d set speed: %d (%02x / %d)\n", portno, rate, clk, divisor);

	/* Set clock source for standard BAUD frequences */
	err = FUNC2(sc, umcs7840_port_registers[portno].reg_sp, &data);
	if (err)
		return (err);
	data &= MCS7840_DEV_SPx_CLOCK_MASK;
	data |= clk;
	err = FUNC4(sc, umcs7840_port_registers[portno].reg_sp, data);
	if (err)
		return (err);

	/* Set divider */
	sc->sc_ports[portno].sc_lcr |= MCS7840_UART_LCR_DIVISORS;
	err = FUNC3(sc, portno, MCS7840_UART_REG_LCR, sc->sc_ports[portno].sc_lcr);
	if (err)
		return (err);

	err = FUNC3(sc, portno, MCS7840_UART_REG_DLL, (uint8_t)(divisor & 0xff));
	if (err)
		return (err);
	err = FUNC3(sc, portno, MCS7840_UART_REG_DLM, (uint8_t)((divisor >> 8) & 0xff));
	if (err)
		return (err);

	/* Turn off access to DLL/DLM registers of UART */
	sc->sc_ports[portno].sc_lcr &= ~MCS7840_UART_LCR_DIVISORS;
	err = FUNC3(sc, portno, MCS7840_UART_REG_LCR, sc->sc_ports[portno].sc_lcr);
	if (err)
		return (err);
	return (0);
}