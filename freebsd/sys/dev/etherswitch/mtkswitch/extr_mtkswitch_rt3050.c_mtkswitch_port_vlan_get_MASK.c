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
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* mtkswitch_vlan_get_pvid ) (struct mtkswitch_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct mtkswitch_softc {TYPE_1__ hal; } ;
struct TYPE_5__ {int /*<<< orphan*/  es_flags; int /*<<< orphan*/  es_port; int /*<<< orphan*/  es_pvid; } ;
typedef  TYPE_2__ etherswitch_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETHERSWITCH_PORT_ADDTAG ; 
 int /*<<< orphan*/  ETHERSWITCH_PORT_DOUBLE_TAG ; 
 int /*<<< orphan*/  ETHERSWITCH_PORT_STRIPTAG ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC0 (struct mtkswitch_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTKSWITCH_POC2 ; 
 int FUNC2 (struct mtkswitch_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTKSWITCH_SGC2 ; 
 int /*<<< orphan*/  FUNC3 (struct mtkswitch_softc*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mtkswitch_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct mtkswitch_softc *sc, etherswitch_port_t *p)
{
	uint32_t val;

	FUNC1(sc, MA_NOTOWNED);
	FUNC0(sc);

	/* Retrieve the PVID */
	sc->hal.mtkswitch_vlan_get_pvid(sc, p->es_port, &p->es_pvid);

	/* Port flags */
	p->es_flags = 0;
	val = FUNC2(sc, MTKSWITCH_SGC2);
	if (val & FUNC5(p->es_port))
		p->es_flags |= ETHERSWITCH_PORT_DOUBLE_TAG;

	val = FUNC2(sc, MTKSWITCH_POC2);
	if (val & FUNC4(p->es_port))
		p->es_flags |= ETHERSWITCH_PORT_STRIPTAG;
	else
		p->es_flags |= ETHERSWITCH_PORT_ADDTAG;

	FUNC3(sc);

	return (0);
}