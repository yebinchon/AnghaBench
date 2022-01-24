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
struct ip17x_softc {int vlan_mode; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
#define  ETHERSWITCH_VLAN_DOT1Q 129 
#define  ETHERSWITCH_VLAN_PORT 128 
 int /*<<< orphan*/  FUNC0 (struct ip17x_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip17x_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static int
FUNC3(struct ip17x_softc *sc, uint32_t mode)
{

	switch (mode) {
	case ETHERSWITCH_VLAN_DOT1Q:
		/* Enable VLAN tag processing. */
		FUNC2(sc->sc_dev, 30, 9, 0x80, 0x80);
		sc->vlan_mode = mode;
		break;
	case ETHERSWITCH_VLAN_PORT:
	default:
		/* Disable VLAN tag processing. */
		FUNC2(sc->sc_dev, 30, 9, 0x80, 0);
		sc->vlan_mode = ETHERSWITCH_VLAN_PORT;
		break;
	}

	/* Reset vlans. */
	FUNC1(sc, sc->vlan_mode);

	/* Update switch configuration. */
	FUNC0(sc);

	return (0);
}