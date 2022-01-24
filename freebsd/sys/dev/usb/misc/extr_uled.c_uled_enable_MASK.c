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
typedef  int /*<<< orphan*/  uint8_t ;
struct uled_softc {int sc_flags; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_state; } ;
typedef  int /*<<< orphan*/  cmdbuf ;

/* Variables and functions */
 int /*<<< orphan*/  ULED_ENABLED ; 
 int ULED_FLAG_BLINK1 ; 
 int /*<<< orphan*/  UR_SET_REPORT ; 
 int /*<<< orphan*/  UT_WRITE_CLASS_INTERFACE ; 
 int /*<<< orphan*/ * blink1 ; 
 int /*<<< orphan*/ * dl100b ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct uled_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3(struct uled_softc *sc)
{
	uint8_t *cmdbuf;
	int error;

	cmdbuf = (sc->sc_flags & ULED_FLAG_BLINK1) ? blink1 : dl100b;

	sc->sc_state |= ULED_ENABLED;
	FUNC0(&sc->sc_mtx);
	error = FUNC2(sc, UT_WRITE_CLASS_INTERFACE, UR_SET_REPORT,
	    0x200, 0, cmdbuf, sizeof(cmdbuf));
	FUNC1(&sc->sc_mtx);
	return (error);
}