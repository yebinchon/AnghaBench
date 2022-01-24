#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int (* mtkswitch_vlan_set_pvid ) (struct mtkswitch_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct mtkswitch_softc {TYPE_1__ hal; } ;
struct TYPE_5__ {int es_flags; int /*<<< orphan*/  es_pvid; int /*<<< orphan*/  es_port; } ;
typedef  TYPE_2__ etherswitch_port_t ;

/* Variables and functions */
 int ENOTSUP ; 
 int ETHERSWITCH_PORT_ADDTAG ; 
 int ETHERSWITCH_PORT_DOUBLE_TAG ; 
 int ETHERSWITCH_PORT_STRIPTAG ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC0 (struct mtkswitch_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtkswitch_softc*) ; 
 int FUNC3 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct mtkswitch_softc *sc, etherswitch_port_t *p)
{
	int err;

	/*
	 * Port behaviour wrt tag/untag/stack is currently defined per-VLAN.
	 * So we say we don't support it here.
	 */
	if ((p->es_flags & (ETHERSWITCH_PORT_DOUBLE_TAG |
	    ETHERSWITCH_PORT_ADDTAG | ETHERSWITCH_PORT_STRIPTAG)) != 0)
		return (ENOTSUP);

	FUNC1(sc, MA_NOTOWNED);
	FUNC0(sc);

	/* Set the PVID */
	if (p->es_pvid != 0) {
		err = sc->hal.mtkswitch_vlan_set_pvid(sc, p->es_port,
		    p->es_pvid);
		if (err != 0) {
			FUNC2(sc);
			return (err);
		}
	}

	FUNC2(sc);

	return (0);
}