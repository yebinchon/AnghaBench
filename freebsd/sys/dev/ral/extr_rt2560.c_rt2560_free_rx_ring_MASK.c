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
struct rt2560_softc {int dummy; } ;
struct rt2560_rx_ring {int count; int /*<<< orphan*/ * data_dmat; struct rt2560_rx_data* data; int /*<<< orphan*/ * desc_dmat; int /*<<< orphan*/ * desc_map; int /*<<< orphan*/ * desc; } ;
struct rt2560_rx_data {int /*<<< orphan*/ * map; int /*<<< orphan*/ * m; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2560_rx_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct rt2560_softc *sc, struct rt2560_rx_ring *ring)
{
	struct rt2560_rx_data *data;
	int i;

	if (ring->desc != NULL) {
		FUNC2(ring->desc_dmat, ring->desc_map,
		    BUS_DMASYNC_POSTWRITE);
		FUNC3(ring->desc_dmat, ring->desc_map);
		FUNC4(ring->desc_dmat, ring->desc, ring->desc_map);
	}

	if (ring->desc_dmat != NULL)
		FUNC0(ring->desc_dmat);

	if (ring->data != NULL) {
		for (i = 0; i < ring->count; i++) {
			data = &ring->data[i];

			if (data->m != NULL) {
				FUNC2(ring->data_dmat, data->map,
				    BUS_DMASYNC_POSTREAD);
				FUNC3(ring->data_dmat, data->map);
				FUNC6(data->m);
			}

			if (data->map != NULL)
				FUNC1(ring->data_dmat, data->map);
		}

		FUNC5(ring->data, M_DEVBUF);
	}

	if (ring->data_dmat != NULL)
		FUNC0(ring->data_dmat);
}