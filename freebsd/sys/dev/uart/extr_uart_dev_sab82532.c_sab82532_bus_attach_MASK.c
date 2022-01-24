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
typedef  int uint8_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int /*<<< orphan*/ * sc_sysdev; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAB_IMR0 ; 
 int SAB_IMR0_CDSC ; 
 int SAB_IMR0_RFO ; 
 int SAB_IMR0_RPF ; 
 int SAB_IMR0_TCD ; 
 int SAB_IMR0_TIME ; 
 int /*<<< orphan*/  SAB_IMR1 ; 
 int SAB_IMR1_ALLS ; 
 int SAB_IMR1_BRKT ; 
 int SAB_IMR1_CSC ; 
 int SER_DDTR ; 
 int SER_DRTS ; 
 int /*<<< orphan*/  UART_PARITY_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct uart_softc *sc)
{
	struct uart_bas *bas;
	uint8_t imr0, imr1;

	bas = &sc->sc_bas;
	if (sc->sc_sysdev == NULL)
		FUNC2(bas, 9600, 8, 1, UART_PARITY_NONE);

	imr0 = SAB_IMR0_TCD|SAB_IMR0_TIME|SAB_IMR0_CDSC|SAB_IMR0_RFO|
	    SAB_IMR0_RPF;
	FUNC4(bas, SAB_IMR0, 0xff & ~imr0);
	imr1 = SAB_IMR1_BRKT|SAB_IMR1_ALLS|SAB_IMR1_CSC;
	FUNC4(bas, SAB_IMR1, 0xff & ~imr1);
	FUNC3(bas);

	if (sc->sc_sysdev == NULL)
		FUNC1(sc, SER_DDTR|SER_DRTS);
	(void)FUNC0(sc);
	return (0);
}