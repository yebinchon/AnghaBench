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
struct usie_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_if_sync_ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  USIE_HIP_SYNC2M ; 
 int hz ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct usie_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct usie_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usie_if_sync_to ; 

__attribute__((used)) static void
FUNC4(void *arg, int pending)
{
	struct usie_softc *sc = arg;

	FUNC0(&sc->sc_mtx);

	/* call twice */
	FUNC3(sc, USIE_HIP_SYNC2M);
	FUNC3(sc, USIE_HIP_SYNC2M);

	FUNC2(&sc->sc_if_sync_ch, 2 * hz, usie_if_sync_to, sc);

	FUNC1(&sc->sc_mtx);
}