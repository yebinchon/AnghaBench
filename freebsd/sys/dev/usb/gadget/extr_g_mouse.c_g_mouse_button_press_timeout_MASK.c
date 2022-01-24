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
struct g_mouse_softc {int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 size_t G_MOUSE_INTR_DT ; 
 int /*<<< orphan*/  FUNC1 (struct g_mouse_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct g_mouse_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct g_mouse_softc *sc = arg;

	FUNC2(sc);

	FUNC0(11, "Timeout %p (button press)\n", sc->sc_xfer[G_MOUSE_INTR_DT]);

	FUNC1(sc);

	FUNC3(sc->sc_xfer[G_MOUSE_INTR_DT]);
}