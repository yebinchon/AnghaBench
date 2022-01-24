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
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; int /*<<< orphan*/  sc_bas; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct uart_softc *sc, int baudrate, int databits,
    int stopbits, int parity)
{
	int error;

	FUNC1(sc->sc_hwmtx);
	error = FUNC0(&sc->sc_bas, baudrate, databits, stopbits,
	    parity);
	FUNC2(sc->sc_hwmtx);
	return (error);
}