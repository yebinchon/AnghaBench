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
struct iwi_softc {int dummy; } ;
struct iwi_rx_ring {int count; int /*<<< orphan*/ * data_dmat; struct iwi_rx_data* data; } ;
struct iwi_rx_data {int /*<<< orphan*/ * map; int /*<<< orphan*/ * m; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iwi_rx_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct iwi_softc *sc, struct iwi_rx_ring *ring)
{
	struct iwi_rx_data *data;
	int i;

	if (ring->data != NULL) {
		for (i = 0; i < ring->count; i++) {
			data = &ring->data[i];

			if (data->m != NULL) {
				FUNC2(ring->data_dmat, data->map,
				    BUS_DMASYNC_POSTREAD);
				FUNC3(ring->data_dmat, data->map);
				FUNC5(data->m);
			}

			if (data->map != NULL)
				FUNC1(ring->data_dmat, data->map);
		}

		FUNC4(ring->data, M_DEVBUF);
	}

	if (ring->data_dmat != NULL)
		FUNC0(ring->data_dmat);
}