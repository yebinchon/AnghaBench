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
struct e6000sw_softc {int dummy; } ;
struct TYPE_3__ {int cmd; int /*<<< orphan*/  vlan_mode; } ;
typedef  TYPE_1__ etherswitch_conf_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct e6000sw_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct e6000sw_softc*) ; 
 int ETHERSWITCH_CONF_VLAN_MODE ; 
 struct e6000sw_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct e6000sw_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, etherswitch_conf_t *conf)
{
	struct e6000sw_softc *sc;

	/* Set the VLAN mode. */
	sc = FUNC2(dev);
	if (conf->cmd & ETHERSWITCH_CONF_VLAN_MODE) {
		FUNC0(sc);
		FUNC3(sc, conf->vlan_mode);
		FUNC1(sc);
	}

	return (0);
}