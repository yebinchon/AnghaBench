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
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAB_IMR0 ; 
 int SAB_IMR0_CDSC ; 
 int SAB_IMR0_RFO ; 
 int SAB_IMR0_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct uart_softc *sc)
{
	struct uart_bas *bas;
	uint8_t imr0;

	bas = &sc->sc_bas;
	imr0 = SAB_IMR0_TIME|SAB_IMR0_CDSC|SAB_IMR0_RFO; /* No TCD or RPF */
	FUNC1(sc->sc_hwmtx);
	FUNC2(bas, SAB_IMR0, 0xff & ~imr0);
	FUNC0(bas);
	FUNC3(sc->sc_hwmtx);
}