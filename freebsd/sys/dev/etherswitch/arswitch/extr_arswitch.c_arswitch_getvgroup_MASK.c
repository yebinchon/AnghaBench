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
struct TYPE_2__ {int (* arswitch_vlan_getvgroup ) (struct arswitch_softc*,int /*<<< orphan*/ *) ;} ;
struct arswitch_softc {TYPE_1__ hal; } ;
typedef  int /*<<< orphan*/  etherswitch_vlangroup_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct arswitch_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct arswitch_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(device_t dev, etherswitch_vlangroup_t *e)
{
	struct arswitch_softc *sc = FUNC0(dev);

	return (sc->hal.arswitch_vlan_getvgroup(sc, e));
}