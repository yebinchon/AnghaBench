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
typedef  scalar_t__ uint64_t ;
struct vmctx {int dummy; } ;
struct pci_devinst {TYPE_1__* pi_bar; struct passthru_softc* pi_arg; } ;
struct passthru_softc {TYPE_2__* psc_bar; } ;
struct iodev_pio_req {int width; scalar_t__ val; scalar_t__ port; int /*<<< orphan*/  access; } ;
struct TYPE_4__ {scalar_t__ addr; } ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  IODEV_PIO ; 
 int /*<<< orphan*/  IODEV_PIO_READ ; 
 scalar_t__ PCIBAR_IO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct iodev_pio_req*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iodev_pio_req*) ; 
 int /*<<< orphan*/  iofd ; 
 scalar_t__ FUNC3 (struct passthru_softc*,scalar_t__,int) ; 
 int FUNC4 (struct pci_devinst*) ; 

__attribute__((used)) static uint64_t
FUNC5(struct vmctx *ctx, int vcpu, struct pci_devinst *pi, int baridx,
	      uint64_t offset, int size)
{
	struct passthru_softc *sc;
	struct iodev_pio_req pio;
	uint64_t val;

	sc = pi->pi_arg;

	if (baridx == FUNC4(pi)) {
		val = FUNC3(sc, offset, size);
	} else {
		FUNC0(pi->pi_bar[baridx].type == PCIBAR_IO);
		FUNC1(&pio, sizeof(struct iodev_pio_req));
		pio.access = IODEV_PIO_READ;
		pio.port = sc->psc_bar[baridx].addr + offset;
		pio.width = size;
		pio.val = 0;

		(void)FUNC2(iofd, IODEV_PIO, &pio);

		val = pio.val;
	}

	return (val);
}