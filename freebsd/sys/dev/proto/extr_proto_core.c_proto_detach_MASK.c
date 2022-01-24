#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct proto_softc {int sc_opencnt; scalar_t__ sc_rescnt; int /*<<< orphan*/  sc_mtx; struct proto_res* sc_res; } ;
struct TYPE_4__ {int /*<<< orphan*/  busdma; int /*<<< orphan*/  res; } ;
struct TYPE_3__ {int /*<<< orphan*/  cdev; } ;
struct proto_res {int r_type; TYPE_2__ r_d; TYPE_1__ r_u; int /*<<< orphan*/  r_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
#define  PROTO_RES_BUSDMA 133 
#define  PROTO_RES_PCICFG 132 
 int PROTO_RES_UNUSED ; 
#define  SYS_RES_DRQ 131 
#define  SYS_RES_IOPORT 130 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct proto_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct proto_softc*,int /*<<< orphan*/ ) ; 

int
FUNC7(device_t dev)
{
	struct proto_softc *sc;
	struct proto_res *r;
	u_int res;

	sc = FUNC2(dev);

	FUNC4(&sc->sc_mtx);
	if (sc->sc_opencnt == 0)
		sc->sc_opencnt = -1;
	FUNC5(&sc->sc_mtx);
	if (sc->sc_opencnt > 0)
		return (EBUSY);

	for (res = 0; res < sc->sc_rescnt; res++) {
		r = sc->sc_res + res;

		switch (r->r_type) {
		case SYS_RES_IRQ:
			/* XXX TODO */
			FUNC0(dev, r->r_type, r->r_rid,
			    r->r_d.res);
			break;
		case SYS_RES_DRQ:
			FUNC0(dev, r->r_type, r->r_rid,
			    r->r_d.res);
			break;
		case SYS_RES_MEMORY:
		case SYS_RES_IOPORT:
			FUNC1(r->r_u.cdev);
			FUNC0(dev, r->r_type, r->r_rid,
			    r->r_d.res);
			break;
		case PROTO_RES_PCICFG:
			FUNC1(r->r_u.cdev);
			break;
		case PROTO_RES_BUSDMA:
			FUNC1(r->r_u.cdev);
			FUNC6(sc, r->r_d.busdma);
			break;
		}
		r->r_type = PROTO_RES_UNUSED;
	}
	FUNC4(&sc->sc_mtx);
	sc->sc_rescnt = 0;
	sc->sc_opencnt = 0;
	FUNC5(&sc->sc_mtx);
	FUNC3(&sc->sc_mtx);
	return (0);
}