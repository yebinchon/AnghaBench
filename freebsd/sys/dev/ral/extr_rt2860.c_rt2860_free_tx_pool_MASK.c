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
struct rt2860_tx_data {int /*<<< orphan*/  map; } ;
struct rt2860_softc {int /*<<< orphan*/  data_pool; int /*<<< orphan*/ * txwi_dmat; int /*<<< orphan*/  txwi_map; int /*<<< orphan*/ * txwi_vaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rt2860_tx_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 

void
FUNC8(struct rt2860_softc *sc)
{
	if (sc->txwi_vaddr != NULL) {
		FUNC5(sc->txwi_dmat, sc->txwi_map,
		    BUS_DMASYNC_POSTWRITE);
		FUNC6(sc->txwi_dmat, sc->txwi_map);
		FUNC7(sc->txwi_dmat, sc->txwi_vaddr, sc->txwi_map);
	}
	if (sc->txwi_dmat != NULL)
		FUNC3(sc->txwi_dmat);

	while (!FUNC0(&sc->data_pool)) {
		struct rt2860_tx_data *data;
		data = FUNC1(&sc->data_pool);
		FUNC4(sc->txwi_dmat, data->map);
		FUNC2(&sc->data_pool, next);
	}
}