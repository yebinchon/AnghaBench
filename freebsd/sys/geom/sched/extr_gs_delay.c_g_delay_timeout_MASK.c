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
struct g_delay_softc {int /*<<< orphan*/  sc_wait; int /*<<< orphan*/  sc_geom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,void (*) (void*),struct g_delay_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *data)
{
	struct g_delay_softc *sc = data;
	
	FUNC2(sc->sc_geom);
	FUNC1(sc->sc_geom);
	FUNC3(sc->sc_geom);
	FUNC0(&sc->sc_wait, 1, g_delay_timeout, sc);
}