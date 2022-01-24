#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iwm_softc {int /*<<< orphan*/  sc_noise; int /*<<< orphan*/  sc_stats; } ;
struct iwm_rx_packet {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  general; } ;
struct iwm_notif_statistics_v10 {TYPE_1__ rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct iwm_notif_statistics_v10*,int) ; 

__attribute__((used)) static void
FUNC2(struct iwm_softc *sc, struct iwm_rx_packet *pkt)
{
	struct iwm_notif_statistics_v10 *stats = (void *)&pkt->data;

	FUNC1(&sc->sc_stats, stats, sizeof(sc->sc_stats));
	sc->sc_noise = FUNC0(sc, &stats->rx.general);
}