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
struct machfb_softc {int sc_flags; } ;

/* Variables and functions */
 int MACHFB_CONSOLE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct machfb_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *v)
{
	struct machfb_softc *sc = v;

	FUNC1(sc, 0);
	/*
	 * In case this is the console set the cursor of the stdout
	 * instance to the start of the last line so OFW output ends
	 * up beneath what FreeBSD left on the screen.
	 */
	if (sc->sc_flags & MACHFB_CONSOLE) {
		FUNC0("stdout @ is my-self 0 to column#", 0);
		FUNC0("stdout @ is my-self #lines 1 - to line#", 0);
	}
}