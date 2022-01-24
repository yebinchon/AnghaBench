#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct e6060sw_softc {scalar_t__ sw_model; scalar_t__ vlan_mode; } ;
struct TYPE_3__ {int cmd; scalar_t__ vlan_mode; } ;
typedef  TYPE_1__ etherswitch_conf_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DOT1QNONE ; 
 int /*<<< orphan*/  DOT1QSECURE ; 
 scalar_t__ E6063 ; 
 scalar_t__ E6065 ; 
 int ETHERSWITCH_CONF_VLAN_MODE ; 
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ; 
 scalar_t__ ETHERSWITCH_VLAN_PORT ; 
 struct e6060sw_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, etherswitch_conf_t *conf)
{
	struct e6060sw_softc *sc;

	sc = FUNC0(dev);

	/* Set the VLAN mode. */
	if (conf->cmd & ETHERSWITCH_CONF_VLAN_MODE) {
		if (conf->vlan_mode == ETHERSWITCH_VLAN_PORT) {
			sc->vlan_mode = ETHERSWITCH_VLAN_PORT;
			FUNC1(dev, DOT1QNONE);
			FUNC3(dev);
		} else if ((sc->sw_model == E6063 || sc->sw_model == E6065) &&
		    conf->vlan_mode == ETHERSWITCH_VLAN_DOT1Q) {
			sc->vlan_mode = ETHERSWITCH_VLAN_DOT1Q;
			FUNC1(dev, DOT1QSECURE);
			FUNC2(dev);
		} else {
			sc->vlan_mode = 0;
			/* Reset VLANs. */
			FUNC1(dev, DOT1QNONE);
			FUNC3(dev);
		}
	}

	return (0);
}