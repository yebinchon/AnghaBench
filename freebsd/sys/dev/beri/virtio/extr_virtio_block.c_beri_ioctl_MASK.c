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
typedef  int u_long ;
struct thread {int dummy; } ;
struct md_ioctl {int dummy; } ;
struct cdev {struct beri_vtblk_softc* si_drv1; } ;
struct beri_vtblk_softc {int opened; int /*<<< orphan*/  pio_recv; int /*<<< orphan*/ * vnode; struct md_ioctl* mdio; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  MDIOCATTACH 129 
#define  MDIOCDETACH 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct beri_vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct beri_vtblk_softc*) ; 
 int FUNC4 (struct beri_vtblk_softc*,struct thread*) ; 
 int FUNC5 (struct beri_vtblk_softc*,struct thread*) ; 
 int /*<<< orphan*/  vtblk_intr ; 

__attribute__((used)) static int
FUNC6(struct cdev *dev, u_long cmd, caddr_t addr,
		int flags, struct thread *td)
{
	struct beri_vtblk_softc *sc;
	int err;

	sc = dev->si_drv1;

	switch (cmd) {
	case MDIOCATTACH:
		/* take file as argument */
		if (sc->vnode != NULL) {
			/* Already opened */
			return (1);
		}
		sc->mdio = (struct md_ioctl *)addr;
		FUNC3(sc);
		FUNC0("opening file, td 0x%08x\n", (int)td);
		err = FUNC5(sc, td);
		if (err)
			return (err);
		FUNC1(sc->pio_recv, vtblk_intr, sc);
		sc->opened = 1;
		break;
	case MDIOCDETACH:
		if (sc->vnode == NULL) {
			/* File not opened */
			return (1);
		}
		sc->opened = 0;
		FUNC0("closing file, td 0x%08x\n", (int)td);
		err = FUNC4(sc, td);
		if (err)
			return (err);
		FUNC2(sc->pio_recv);
		break;
	default:
		break;
	}

	return (0);
}