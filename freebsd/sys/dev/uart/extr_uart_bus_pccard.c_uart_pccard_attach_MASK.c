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
struct uart_softc {int /*<<< orphan*/ * sc_class; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct uart_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uart_ns8250_class ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct uart_softc *sc;
	int error;

	sc = FUNC0(dev);
	sc->sc_class = &uart_ns8250_class;

	error = FUNC2(dev, 0, 0, 0, 0, 0, 0);
	if (error > 0)
		return (error);
	return (FUNC1(dev));
}