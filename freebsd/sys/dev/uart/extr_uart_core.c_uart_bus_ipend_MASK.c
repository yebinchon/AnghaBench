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
struct uart_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct uart_softc*) ; 
 struct uart_softc* FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(device_t dev)
{
	struct uart_softc *sc;

	sc = FUNC1(dev);
	return (FUNC0(sc));
}