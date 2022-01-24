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
typedef  int uint16_t ;
struct uart_softc {int dll; int dlh; int /*<<< orphan*/  mcr; int /*<<< orphan*/  msr; } ;

/* Variables and functions */
 int DEFAULT_BAUD ; 
 int DEFAULT_RCLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_softc*,int) ; 

__attribute__((used)) static void
FUNC2(struct uart_softc *sc)
{
	uint16_t divisor;

	divisor = DEFAULT_RCLK / DEFAULT_BAUD / 16;
	sc->dll = divisor;
	sc->dlh = divisor >> 16;
	sc->msr = FUNC0(sc->mcr);

	FUNC1(sc, 1);	/* no fifo until enabled by software */
}