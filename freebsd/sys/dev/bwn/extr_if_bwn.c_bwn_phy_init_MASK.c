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
struct bwn_softc {int /*<<< orphan*/  sc_dev; } ;
struct TYPE_2__ {int (* init ) (struct bwn_mac*) ;int /*<<< orphan*/  (* rf_onoff ) (struct bwn_mac*,int) ;int /*<<< orphan*/  (* exit ) (struct bwn_mac*) ;int /*<<< orphan*/  (* get_default_chan ) (struct bwn_mac*) ;int /*<<< orphan*/  chan; } ;
struct bwn_mac {TYPE_1__ mac_phy; struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 int FUNC0 (struct bwn_mac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC3 (struct bwn_mac*,int) ; 
 int FUNC4 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC5 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC6 (struct bwn_mac*) ; 
 int /*<<< orphan*/  FUNC7 (struct bwn_mac*,int) ; 

__attribute__((used)) static int
FUNC8(struct bwn_mac *mac)
{
	struct bwn_softc *sc = mac->mac_sc;
	int error;

	mac->mac_phy.chan = mac->mac_phy.get_default_chan(mac);
	mac->mac_phy.rf_onoff(mac, 1);
	error = mac->mac_phy.init(mac);
	if (error) {
		FUNC1(sc->sc_dev, "PHY init failed\n");
		goto fail0;
	}
	error = FUNC0(mac,
	    mac->mac_phy.get_default_chan(mac));
	if (error) {
		FUNC1(sc->sc_dev,
		    "failed to switch default channel\n");
		goto fail1;
	}
	return (0);
fail1:
	if (mac->mac_phy.exit)
		mac->mac_phy.exit(mac);
fail0:
	mac->mac_phy.rf_onoff(mac, 0);

	return (error);
}