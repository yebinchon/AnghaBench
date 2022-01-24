#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct proto_softc {scalar_t__ sc_rescnt; struct proto_res* sc_res; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_6__ {TYPE_2__* cdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  busdma; int /*<<< orphan*/  res; } ;
struct proto_res {int r_type; int r_size; TYPE_3__ r_u; TYPE_1__ r_d; int /*<<< orphan*/  r_rid; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {struct proto_res* si_drv2; struct proto_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
#define  PROTO_RES_BUSDMA 133 
#define  PROTO_RES_PCICFG 132 
#define  SYS_RES_DRQ 131 
#define  SYS_RES_IOPORT 130 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct proto_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct proto_softc*) ; 
 int /*<<< orphan*/  proto_devsw ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(device_t dev)
{
	struct proto_softc *sc;
	struct proto_res *r;
	u_int res;

	sc = FUNC1(dev);
	sc->sc_dev = dev;
	FUNC3(&sc->sc_mtx, "proto-softc", NULL, MTX_DEF);

	for (res = 0; res < sc->sc_rescnt; res++) {
		r = sc->sc_res + res;
		switch (r->r_type) {
		case SYS_RES_IRQ:
			/* XXX TODO */
			break;
		case SYS_RES_DRQ:
			break;
		case SYS_RES_MEMORY:
		case SYS_RES_IOPORT:
			r->r_size = FUNC5(r->r_d.res);
			r->r_u.cdev = FUNC2(&proto_devsw, res, 0, 0, 0600,
			    "proto/%s/%02x.%s", FUNC0(dev), r->r_rid,
			    (r->r_type == SYS_RES_IOPORT) ? "io" : "mem");
			r->r_u.cdev->si_drv1 = sc;
			r->r_u.cdev->si_drv2 = r;
			break;
		case PROTO_RES_PCICFG:
			r->r_size = 4096;
			r->r_u.cdev = FUNC2(&proto_devsw, res, 0, 0, 0600,
			    "proto/%s/pcicfg", FUNC0(dev));
			r->r_u.cdev->si_drv1 = sc;
			r->r_u.cdev->si_drv2 = r;
			break;
		case PROTO_RES_BUSDMA:
			r->r_d.busdma = FUNC4(sc);
			r->r_size = 0;	/* no read(2) nor write(2) */
			r->r_u.cdev = FUNC2(&proto_devsw, res, 0, 0, 0600,
			    "proto/%s/busdma", FUNC0(dev));
			r->r_u.cdev->si_drv1 = sc;
			r->r_u.cdev->si_drv2 = r;
			break;
		}
	}
	return (0);
}