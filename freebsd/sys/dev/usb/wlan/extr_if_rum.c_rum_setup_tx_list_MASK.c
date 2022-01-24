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
struct rum_tx_data {struct rum_softc* sc; } ;
struct rum_softc {scalar_t__ tx_nfree; int /*<<< orphan*/  tx_free; struct rum_tx_data* tx_data; int /*<<< orphan*/  tx_q; } ;

/* Variables and functions */
 int RUM_TX_LIST_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rum_tx_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static void
FUNC2(struct rum_softc *sc)
{
	struct rum_tx_data *data;
	int i;

	sc->tx_nfree = 0;
	FUNC0(&sc->tx_q);
	FUNC0(&sc->tx_free);

	for (i = 0; i < RUM_TX_LIST_COUNT; i++) {
		data = &sc->tx_data[i];

		data->sc = sc;
		FUNC1(&sc->tx_free, data, next);
		sc->tx_nfree++;
	}
}