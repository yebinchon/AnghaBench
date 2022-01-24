#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mx25l_softc {int sc_flags; int sc_erasesize; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_taskstate; int /*<<< orphan*/  sc_p; int /*<<< orphan*/  sc_bio_queue; TYPE_1__* sc_disk; int /*<<< orphan*/  sc_parent; } ;
struct mx25l_flash_ident {int flags; int sectorsize; int sectorcount; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {char* d_name; int d_mediasize; int d_stripesize; int /*<<< orphan*/  d_descr; int /*<<< orphan*/ * d_dump; int /*<<< orphan*/  d_unit; int /*<<< orphan*/  d_sectorsize; int /*<<< orphan*/  d_maxsize; struct mx25l_softc* d_drv1; int /*<<< orphan*/  d_ioctl; int /*<<< orphan*/  d_getattr; int /*<<< orphan*/  d_strategy; int /*<<< orphan*/  d_close; int /*<<< orphan*/  d_open; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ENTER_4B_MODE ; 
 int /*<<< orphan*/  CMD_EXIT_4B_MODE ; 
 int /*<<< orphan*/  DFLTPHYS ; 
 int /*<<< orphan*/  DISK_VERSION ; 
 int ENXIO ; 
 int FL_DISABLE_4B_ADDR ; 
 int FL_ENABLE_4B_ADDR ; 
 int FL_ERASE_32K ; 
 int FL_ERASE_4K ; 
 int /*<<< orphan*/  FUNC0 (struct mx25l_softc*) ; 
 int /*<<< orphan*/  MX25L_SECTORSIZE ; 
 int /*<<< orphan*/  TSTATE_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mx25l_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int,int) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct mx25l_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mx25l_close ; 
 struct mx25l_flash_ident* FUNC9 (struct mx25l_softc*) ; 
 int /*<<< orphan*/  mx25l_getattr ; 
 int /*<<< orphan*/  mx25l_ioctl ; 
 int /*<<< orphan*/  mx25l_open ; 
 int FUNC10 (struct mx25l_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mx25l_strategy ; 
 int /*<<< orphan*/  mx25l_task ; 
 int FUNC11 (struct mx25l_softc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct mx25l_softc *sc;
	struct mx25l_flash_ident *ident;
	int err;

	sc = FUNC3(dev);
	sc->sc_dev = dev;
	sc->sc_parent = FUNC2(sc->sc_dev);

	FUNC0(sc);

	ident = FUNC9(sc);
	if (ident == NULL)
		return (ENXIO);

	if ((err = FUNC11(sc)) != 0)
		return (err);

	sc->sc_flags = ident->flags;

	if (sc->sc_flags & FL_ERASE_4K)
		sc->sc_erasesize = 4 * 1024;
	else if (sc->sc_flags & FL_ERASE_32K)
		sc->sc_erasesize = 32 * 1024;
	else
		sc->sc_erasesize = ident->sectorsize;

	if (sc->sc_flags & FL_ENABLE_4B_ADDR) {
		if ((err = FUNC10(sc, CMD_ENTER_4B_MODE)) != 0)
			return (err);
	} else if (sc->sc_flags & FL_DISABLE_4B_ADDR) {
		if ((err = FUNC10(sc, CMD_EXIT_4B_MODE)) != 0)
			return (err);
	}

	sc->sc_disk = FUNC6();
	sc->sc_disk->d_open = mx25l_open;
	sc->sc_disk->d_close = mx25l_close;
	sc->sc_disk->d_strategy = mx25l_strategy;
	sc->sc_disk->d_getattr = mx25l_getattr;
	sc->sc_disk->d_ioctl = mx25l_ioctl;
	sc->sc_disk->d_name = "flash/spi";
	sc->sc_disk->d_drv1 = sc;
	sc->sc_disk->d_maxsize = DFLTPHYS;
	sc->sc_disk->d_sectorsize = MX25L_SECTORSIZE;
	sc->sc_disk->d_mediasize = ident->sectorsize * ident->sectorcount;
	sc->sc_disk->d_stripesize = sc->sc_erasesize;
	sc->sc_disk->d_unit = FUNC4(sc->sc_dev);
	sc->sc_disk->d_dump = NULL;		/* NB: no dumps */
	FUNC12(sc->sc_disk->d_descr, ident->name,
	    sizeof(sc->sc_disk->d_descr));

	FUNC7(sc->sc_disk, DISK_VERSION);
	FUNC1(&sc->sc_bio_queue);

	FUNC8(&mx25l_task, sc, &sc->sc_p, 0, 0, "task: mx25l flash");
	sc->sc_taskstate = TSTATE_RUNNING;

	FUNC5(sc->sc_dev, 
	    "device type %s, size %dK in %d sectors of %dK, erase size %dK\n",
	    ident->name,
	    ident->sectorcount * ident->sectorsize / 1024,
	    ident->sectorcount, ident->sectorsize / 1024,
	    sc->sc_erasesize / 1024);

	return (0);
}