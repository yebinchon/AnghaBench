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
struct TYPE_2__ {int chan; } ;
struct uart_softc {int sc_rxfifosz; int sc_txfifosz; int /*<<< orphan*/  sc_dev; TYPE_1__ sc_bas; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC3(struct uart_softc *sc)
{
	char buf[80];
	int error;

	error = FUNC1(&sc->sc_bas);
	if (error)
		return (error);

	sc->sc_rxfifosz = 1;
	sc->sc_txfifosz = 1;

	FUNC2(buf, sizeof(buf), "quicc, channel %d", sc->sc_bas.chan);
	FUNC0(sc->sc_dev, buf);
	return (0);
}