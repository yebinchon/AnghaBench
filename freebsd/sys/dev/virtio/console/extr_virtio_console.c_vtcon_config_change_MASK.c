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
struct vtcon_softc {int vtcon_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int VTCON_FLAG_MULTIPORT ; 
 int VTCON_FLAG_SIZE ; 
 struct vtcon_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vtcon_softc*) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct vtcon_softc *sc;

	sc = FUNC0(dev);

	/*
	 * When the multiport feature is negotiated, all configuration
	 * changes are done through control virtqueue events.
	 */
	if ((sc->vtcon_flags & VTCON_FLAG_MULTIPORT) == 0) {
		if (sc->vtcon_flags & VTCON_FLAG_SIZE)
			FUNC1(sc);
	}

	return (0);
}