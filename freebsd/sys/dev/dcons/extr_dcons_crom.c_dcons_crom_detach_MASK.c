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
struct TYPE_3__ {int /*<<< orphan*/ * post_busreset; } ;
struct dcons_crom_softc {int /*<<< orphan*/ * dma_tag; int /*<<< orphan*/  dma_map; scalar_t__ ehand; TYPE_1__ fd; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/ * dma_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* dcons_conf ; 
 int /*<<< orphan*/  dcons_poll ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct dcons_crom_softc *sc;

        sc = (struct dcons_crom_softc *) FUNC4(dev);
	sc->fd.post_busreset = NULL;

	if (sc->ehand)
		FUNC0(dcons_poll, sc->ehand);

	/* XXX */
	if (dcons_conf->dma_tag == sc->dma_tag)
		dcons_conf->dma_tag = NULL;

	FUNC3(sc->dma_tag, sc->dma_map);
	FUNC2(sc->dma_tag, sc->dma_map);
	FUNC1(sc->dma_tag);

	return 0;
}