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
struct ums_softc {int /*<<< orphan*/  sc_callout; int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 size_t UMS_INTR_DT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ums_softc *sc)
{
	FUNC1(sc->sc_xfer[UMS_INTR_DT]);
	FUNC0(&sc->sc_callout);
}