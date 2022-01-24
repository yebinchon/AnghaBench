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
struct virtio_mmio_platform_softc {int use_pio; void* dev; int /*<<< orphan*/  pio_recv; int /*<<< orphan*/  pio_send; } ;
struct fdt_ic {int iph; void* dev; } ;
typedef  int phandle_t ;
typedef  void* device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct fdt_ic*,int /*<<< orphan*/ ) ; 
 struct virtio_mmio_platform_softc* FUNC1 (void*) ; 
 int /*<<< orphan*/  fdt_ic_list_head ; 
 int /*<<< orphan*/  fdt_ics ; 
 struct fdt_ic* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (void*) ; 
 scalar_t__ FUNC4 (struct virtio_mmio_platform_softc*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct virtio_mmio_platform_softc *sc;
	struct fdt_ic *fic;
	phandle_t node;

	sc = FUNC1(dev);
	sc->dev = dev;
	sc->use_pio = 1;

	if ((FUNC4(sc, "pio-send", &sc->pio_send) != 0) ||
	    (FUNC4(sc, "pio-recv", &sc->pio_recv) != 0))
		sc->use_pio = 0;

	if ((node = FUNC3(sc->dev)) == -1)
		return (ENXIO);

	fic = FUNC2(sizeof(*fic), M_DEVBUF, M_WAITOK|M_ZERO);
	fic->iph = node;
	fic->dev = dev;
	FUNC0(&fdt_ic_list_head, fic, fdt_ics);

	return (0);
}