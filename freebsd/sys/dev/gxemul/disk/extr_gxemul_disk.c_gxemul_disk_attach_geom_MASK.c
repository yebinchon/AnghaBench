#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct gxemul_disk_softc {TYPE_1__* sc_provider; int /*<<< orphan*/  sc_size; TYPE_2__* sc_geom; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; struct gxemul_disk_softc* softc; } ;
struct TYPE_5__ {int /*<<< orphan*/  mediasize; int /*<<< orphan*/  sectorsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  GXEMUL_DISK_DEV_BLOCKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_gxemul_disk_class ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *arg, int flag)
{
	struct gxemul_disk_softc *sc;

	sc = arg;

	sc->sc_geom = FUNC2(&g_gxemul_disk_class, "%s", FUNC0(sc->sc_dev));
	sc->sc_geom->softc = sc;

	sc->sc_provider = FUNC3(sc->sc_geom, "%s", sc->sc_geom->name);
	sc->sc_provider->sectorsize = GXEMUL_DISK_DEV_BLOCKSIZE;
	sc->sc_provider->mediasize = sc->sc_size;
	FUNC1(sc->sc_provider, 0);
}