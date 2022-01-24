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
typedef  size_t uint8_t ;
struct ustorage_fs_softc {size_t sc_last_xfer_index; scalar_t__* sc_xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static void
FUNC1(struct ustorage_fs_softc *sc, uint8_t xfer_index)
{
	if (sc->sc_xfer[xfer_index]) {
		sc->sc_last_xfer_index = xfer_index;
		FUNC0(sc->sc_xfer[xfer_index]);
	}
}