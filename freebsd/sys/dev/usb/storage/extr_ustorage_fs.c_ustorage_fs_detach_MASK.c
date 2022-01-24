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
struct ustorage_fs_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  USTORAGE_FS_T_BBB_MAX ; 
 struct ustorage_fs_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	struct ustorage_fs_softc *sc = FUNC0(dev);

	/* teardown our statemachine */

	FUNC2(sc->sc_xfer, USTORAGE_FS_T_BBB_MAX);

	FUNC1(&sc->sc_mtx);

	return (0);			/* success */
}