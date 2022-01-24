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
struct intelspi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intelspi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct intelspi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct intelspi_softc*) ; 
 int FUNC3 (struct intelspi_softc*) ; 

__attribute__((used)) static int
FUNC4(struct intelspi_softc *sc)
{

	FUNC0(sc);

	/* TX - Fill up the FIFO. */
	FUNC2(sc);

	/* RX - Drain the FIFO. */
	FUNC1(sc);

	/* Check for end of transfer. */
	return FUNC3(sc);
}