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
struct ksz8995ma_softc {scalar_t__ vlan_mode; } ;
struct TYPE_3__ {int cmd; scalar_t__ vlan_mode; } ;
typedef  TYPE_1__ etherswitch_conf_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ETHERSWITCH_CONF_VLAN_MODE ; 
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ; 
 scalar_t__ ETHERSWITCH_VLAN_PORT ; 
 int /*<<< orphan*/  KSZ8995MA_GC3 ; 
 int KSZ8995MA_VLAN_ENABLE ; 
 struct ksz8995ma_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, etherswitch_conf_t *conf)
{
	int reg;
	struct ksz8995ma_softc *sc;

	sc = FUNC0(dev);

	if ((conf->cmd & ETHERSWITCH_CONF_VLAN_MODE) == 0)
		return (0);

	if (conf->vlan_mode == ETHERSWITCH_VLAN_PORT) {
		sc->vlan_mode = ETHERSWITCH_VLAN_PORT;
		reg = FUNC2(dev, KSZ8995MA_GC3);
		FUNC3(dev, KSZ8995MA_GC3, 
		    reg & ~KSZ8995MA_VLAN_ENABLE);
		FUNC1(dev);
	} else if (conf->vlan_mode == ETHERSWITCH_VLAN_DOT1Q) {
		sc->vlan_mode = ETHERSWITCH_VLAN_DOT1Q;
		reg = FUNC2(dev, KSZ8995MA_GC3);
		FUNC3(dev, KSZ8995MA_GC3, 
		    reg | KSZ8995MA_VLAN_ENABLE);
	} else {
		sc->vlan_mode = 0;
		reg = FUNC2(dev, KSZ8995MA_GC3);
		FUNC3(dev, KSZ8995MA_GC3, 
		    reg & ~KSZ8995MA_VLAN_ENABLE);
		FUNC1(dev);
	}
	return (0);
}