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
struct atse_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atse_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct atse_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct atse_softc*) ; 

__attribute__((used)) static void
FUNC3(void *xsc)
{
	struct atse_softc *sc;

	/*
	 * XXXRW: There is some argument that we should immediately do RX
	 * processing after enabling interrupts, or one may not fire if there
	 * are buffered packets.
	 */
	sc = (struct atse_softc *)xsc;
	FUNC0(sc);
	FUNC2(sc);
	FUNC1(sc);
}