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
struct pio_softc {void* dev; int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
struct fdt_ic {int iph; void* dev; } ;
typedef  int phandle_t ;
typedef  void* device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct fdt_ic*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pio_softc* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*) ; 
 int /*<<< orphan*/  fdt_ic_list_head ; 
 int /*<<< orphan*/  fdt_ics ; 
 struct fdt_ic* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  pio_spec ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct pio_softc *sc;
	struct fdt_ic *fic;
	phandle_t node;

	sc = FUNC2(dev);
	sc->dev = dev;

	if (FUNC1(dev, pio_spec, sc->res)) {
		FUNC3(dev, "could not allocate resources\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC7(sc->res[0]);
	sc->bsh = FUNC6(sc->res[0]);

	if ((node = FUNC5(sc->dev)) == -1)
		return (ENXIO);

	fic = FUNC4(sizeof(*fic), M_DEVBUF, M_WAITOK|M_ZERO);
	fic->iph = node;
	fic->dev = dev;
	FUNC0(&fdt_ic_list_head, fic, fdt_ics);

	return (0);
}