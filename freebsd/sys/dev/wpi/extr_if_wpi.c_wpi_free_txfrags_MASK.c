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
typedef  size_t uint16_t ;
struct wpi_tx_ring {size_t pending; size_t cur; int /*<<< orphan*/  data_dmat; struct wpi_tx_data* data; } ;
struct wpi_tx_data {int /*<<< orphan*/ * ni; int /*<<< orphan*/ * m; int /*<<< orphan*/  map; } ;
struct wpi_softc {struct wpi_tx_ring* txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpi_softc*) ; 
 size_t WPI_TX_RING_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct wpi_softc *sc, uint16_t ac)
{
	struct wpi_tx_ring *ring;
	struct wpi_tx_data *data;
	uint8_t cur;

	FUNC0(sc);
	ring = &sc->txq[ac];

	while (ring->pending != 0) {
		ring->pending--;
		cur = (ring->cur + ring->pending) % WPI_TX_RING_COUNT;
		data = &ring->data[cur];

		FUNC2(ring->data_dmat, data->map,
		    BUS_DMASYNC_POSTWRITE);
		FUNC3(ring->data_dmat, data->map);
		FUNC5(data->m);
		data->m = NULL;

		FUNC4(data->ni);
		data->ni = NULL;
	}

	FUNC1(sc);
}