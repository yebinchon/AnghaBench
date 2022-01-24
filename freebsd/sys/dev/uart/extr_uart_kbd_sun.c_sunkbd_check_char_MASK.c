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
struct sunkbd_softc {int sc_flags; scalar_t__ sc_composed_char; } ;
typedef  int /*<<< orphan*/  keyboard_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int KPCOMPOSE ; 
 int TRUE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(keyboard_t *kbd)
{
	struct sunkbd_softc *sc;

	if (!FUNC0(kbd))
		return (FALSE);

	sc = (struct sunkbd_softc *)kbd;
	if (!(sc->sc_flags & KPCOMPOSE) && (sc->sc_composed_char > 0))
		return (TRUE);

	return (FUNC1(kbd));
}