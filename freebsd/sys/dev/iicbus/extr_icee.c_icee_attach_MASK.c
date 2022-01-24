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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct icee_softc {scalar_t__ size; scalar_t__ type; scalar_t__ wr_sz; TYPE_1__* cdev; int /*<<< orphan*/  dev; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct icee_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid_list* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 scalar_t__ bootverbose ; 
 struct icee_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  icee_cdevsw ; 
 int /*<<< orphan*/  FUNC7 (struct icee_softc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct icee_softc *sc = FUNC2(dev);
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *tree;

	sc->dev = dev;
	sc->addr = FUNC8(dev);
	FUNC7(sc);
	if (sc->size == 0 || sc->type == 0 || sc->wr_sz == 0) {
		FUNC6(sc->dev, "Missing config data, "
		    "these cannot be zero: size %d type %d wr_sz %d\n",
		    sc->size, sc->type, sc->wr_sz);
		return (EINVAL);
	}
	if (bootverbose)
		FUNC6(dev, "size: %d bytes, addressing: %d-bits\n",
		    sc->size, sc->type);
	sc->cdev = FUNC9(&icee_cdevsw, FUNC5(dev), UID_ROOT,
	    GID_WHEEL, 0600, "icee%d", FUNC5(dev));
	if (sc->cdev == NULL) {
		return (ENOMEM);
	}
	sc->cdev->si_drv1 = sc;

	ctx = FUNC3(dev);
	tree = FUNC1(FUNC4(dev));
	FUNC0(ctx, tree, OID_AUTO, "address_size", CTLFLAG_RD,
	    &sc->type, 0, "Memory array address size in bits");
	FUNC0(ctx, tree, OID_AUTO, "device_size", CTLFLAG_RD,
	    &sc->size, 0, "Memory array capacity in bytes");
	FUNC0(ctx, tree, OID_AUTO, "write_size", CTLFLAG_RD,
	    &sc->wr_sz, 0, "Memory array page write size in bytes");

	return (0);
}