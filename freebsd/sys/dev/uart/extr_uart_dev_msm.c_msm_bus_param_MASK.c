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
struct TYPE_2__ {scalar_t__ rclk; } ;
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; TYPE_1__ sc_bas; } ;

/* Variables and functions */
 scalar_t__ DEF_CLK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct uart_softc *sc, int baudrate, int databits,
    int stopbits, int parity)
{
	int error;

	if (sc->sc_bas.rclk == 0)
		sc->sc_bas.rclk = DEF_CLK;

	FUNC0(sc->sc_bas.rclk != 0, ("msm_init: Invalid rclk"));

	FUNC2(sc->sc_hwmtx);
	error = FUNC1(&sc->sc_bas, baudrate, databits, stopbits,
	    parity);
	FUNC3(sc->sc_hwmtx);

	return (error);
}