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
typedef  int /*<<< orphan*/  uint32_t ;
struct arswitch_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR8X16_VLAN_OP_LOAD ; 
 int /*<<< orphan*/  FUNC0 (struct arswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC1 (struct arswitch_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC2(struct arswitch_softc *sc, uint32_t ports,
    uint32_t untagged_ports, int vid)
{
	int err;

	FUNC0(sc, MA_OWNED);
	err = FUNC1(sc, AR8X16_VLAN_OP_LOAD, vid, ports);
	if (err)
		return (err);
	return (0);
}