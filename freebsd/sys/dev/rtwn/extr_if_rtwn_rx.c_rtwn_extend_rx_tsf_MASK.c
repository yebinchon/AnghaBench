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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct rtwn_softc {int dummy; } ;
struct rtwn_rx_stat_common {int /*<<< orphan*/  tsf_low; int /*<<< orphan*/  rxdw3; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTWN_RXDW3_BSSID01_FIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rtwn_softc*,int) ; 
 int FUNC4 (struct rtwn_softc*,int) ; 

__attribute__((used)) static uint64_t
FUNC5(struct rtwn_softc *sc,
    const struct rtwn_rx_stat_common *stat)
{
	uint64_t tsft;
	uint32_t rxdw3, tsfl, tsfl_curr;
	int id;

	rxdw3 = FUNC2(stat->rxdw3);
	tsfl = FUNC2(stat->tsf_low);
	id = FUNC0(rxdw3, RTWN_RXDW3_BSSID01_FIT);

	switch (id) {
	case 1:
	case 2:
		id >>= 1;
		tsfl_curr = FUNC4(sc, id);
		break;
	default:
	{
		uint32_t tsfl0, tsfl1;

		tsfl0 = FUNC4(sc, 0);
		tsfl1 = FUNC4(sc, 1);

		if (FUNC1(tsfl0 - tsfl) < FUNC1(tsfl1 - tsfl)) {
			id = 0;
			tsfl_curr = tsfl0;
		} else {
			id = 1;
			tsfl_curr = tsfl1;
		}
		break;
	}
	}

	tsft = FUNC3(sc, id);
	if (tsfl > tsfl_curr && tsfl > 0xffff0000)
		tsft--;
	tsft <<= 32;
	tsft += tsfl;

	return (tsft);
}