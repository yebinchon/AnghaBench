#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ukbd_softc {scalar_t__ sc_composed_char; int sc_flags; } ;
struct TYPE_5__ {struct ukbd_softc* kb_data; } ;
typedef  TYPE_1__ keyboard_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int UKBD_FLAG_COMPOSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(keyboard_t *kbd)
{
	struct ukbd_softc *sc = kbd->kb_data;

	FUNC1();

	if (!FUNC0(kbd))
		return (0);

	if ((sc->sc_composed_char > 0) &&
	    (!(sc->sc_flags & UKBD_FLAG_COMPOSE))) {
		return (1);
	}
	return (FUNC2(kbd));
}