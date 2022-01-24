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
struct iwm_softc {int /*<<< orphan*/  sc_last_phy_info; } ;
struct iwm_rx_phy_info {int dummy; } ;
struct iwm_rx_packet {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWM_DEBUG_RECV ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct iwm_rx_phy_info*,int) ; 

__attribute__((used)) static void
FUNC2(struct iwm_softc *sc, struct iwm_rx_packet *pkt)
{
	struct iwm_rx_phy_info *phy_info = (void *)pkt->data;

	FUNC0(sc, IWM_DEBUG_RECV, "received PHY stats\n");

	FUNC1(&sc->sc_last_phy_info, phy_info, sizeof(sc->sc_last_phy_info));
}