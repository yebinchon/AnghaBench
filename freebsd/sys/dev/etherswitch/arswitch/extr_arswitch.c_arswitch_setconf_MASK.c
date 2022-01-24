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
struct arswitch_softc {int dummy; } ;
struct TYPE_3__ {int cmd; int /*<<< orphan*/  vlan_mode; } ;
typedef  TYPE_1__ etherswitch_conf_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ETHERSWITCH_CONF_VLAN_MODE ; 
 int FUNC0 (struct arswitch_softc*,int /*<<< orphan*/ ) ; 
 struct arswitch_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev, etherswitch_conf_t *conf)
{
	struct arswitch_softc *sc;
	int err;

	sc = FUNC1(dev);

	/* Set the VLAN mode. */
	if (conf->cmd & ETHERSWITCH_CONF_VLAN_MODE) {
		err = FUNC0(sc, conf->vlan_mode);
		if (err != 0)
			return (err);
	}

	/* TODO: Set the switch ethernet address. */

	return (0);
}