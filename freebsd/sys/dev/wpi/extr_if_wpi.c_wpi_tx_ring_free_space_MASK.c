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
typedef  size_t uint16_t ;
struct wpi_tx_ring {int queued; } ;
struct wpi_softc {struct wpi_tx_ring* txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpi_softc*) ; 
 int WPI_TX_RING_HIMARK ; 

__attribute__((used)) static __inline int
FUNC2(struct wpi_softc *sc, uint16_t ac)
{
	struct wpi_tx_ring *ring = &sc->txq[ac];
	int retval;

	FUNC0(sc);
	retval = WPI_TX_RING_HIMARK - ring->queued;
	FUNC1(sc);

	return retval;
}