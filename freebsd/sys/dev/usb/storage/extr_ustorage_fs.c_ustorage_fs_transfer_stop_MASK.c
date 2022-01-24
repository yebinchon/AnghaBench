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
struct ustorage_fs_softc {size_t sc_last_xfer_index; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ustorage_fs_softc *sc)
{
	FUNC3(sc->sc_xfer[sc->sc_last_xfer_index]);
	FUNC1(&sc->sc_mtx);
	FUNC2(sc->sc_xfer[sc->sc_last_xfer_index]);
	FUNC0(&sc->sc_mtx);
}