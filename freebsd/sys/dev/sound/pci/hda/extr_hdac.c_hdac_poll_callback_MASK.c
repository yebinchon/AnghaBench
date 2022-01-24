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
struct hdac_softc {scalar_t__ polling; int /*<<< orphan*/  poll_ival; int /*<<< orphan*/  poll_callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct hdac_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdac_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct hdac_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdac_softc*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct hdac_softc *sc = arg;

	if (sc == NULL)
		return;

	FUNC2(sc);
	if (sc->polling == 0) {
		FUNC3(sc);
		return;
	}
	FUNC0(&sc->poll_callout, sc->poll_ival,
	    hdac_poll_callback, sc);
	FUNC3(sc);

	FUNC1(sc);
}