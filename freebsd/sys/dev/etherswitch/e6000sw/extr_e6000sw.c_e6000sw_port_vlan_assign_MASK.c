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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  e6000sw_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_CONTROL1 ; 
 int PORT_CONTROL1_FID_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PORT_VLAN_MAP ; 
 int PORT_VLAN_MAP_FID ; 
 int PORT_VLAN_MAP_FID_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __inline void
FUNC4(e6000sw_softc_t *sc, int port, uint32_t fid,
    uint32_t members)
{
	uint32_t reg;

	reg = FUNC2(sc, FUNC1(sc, port), PORT_VLAN_MAP);
	reg &= ~(FUNC0(sc) | PORT_VLAN_MAP_FID_MASK);
	reg |= members & FUNC0(sc) & ~(1 << port);
	reg |= (fid << PORT_VLAN_MAP_FID) & PORT_VLAN_MAP_FID_MASK;
	FUNC3(sc, FUNC1(sc, port), PORT_VLAN_MAP, reg);
	reg = FUNC2(sc, FUNC1(sc, port), PORT_CONTROL1);
	reg &= ~PORT_CONTROL1_FID_MASK;
	reg |= (fid >> 4) & PORT_CONTROL1_FID_MASK;
	FUNC3(sc, FUNC1(sc, port), PORT_CONTROL1, reg);
}