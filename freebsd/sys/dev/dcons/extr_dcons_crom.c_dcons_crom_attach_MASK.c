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
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_4__ {TYPE_2__* fc; void* post_busreset; int /*<<< orphan*/ * post_explore; int /*<<< orphan*/  dev; } ;
struct dcons_crom_softc {int /*<<< orphan*/  ehand; int /*<<< orphan*/  dma_map; int /*<<< orphan*/  dma_tag; TYPE_1__ fd; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/ * buf; } ;
struct TYPE_5__ {int /*<<< orphan*/  dmat; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int /*<<< orphan*/  BUS_DMA_COHERENT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Giant ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dcons_crom_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 TYPE_3__* dcons_conf ; 
 int /*<<< orphan*/  dcons_crom_poll ; 
 scalar_t__ dcons_crom_post_busreset ; 
 int /*<<< orphan*/  dcons_poll ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmamap_cb ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct dcons_crom_softc *sc;
	int error;

	if (dcons_conf->buf == NULL)
		return (ENXIO);
        sc = (struct dcons_crom_softc *) FUNC5(dev);
	sc->fd.fc = FUNC4(dev);
	sc->fd.dev = dev;
	sc->fd.post_explore = NULL;
	sc->fd.post_busreset = (void *) dcons_crom_post_busreset;

	/* map dcons buffer */
	error = FUNC1(
		/*parent*/ sc->fd.fc->dmat,
		/*alignment*/ sizeof(u_int32_t),
		/*boundary*/ 0,
		/*lowaddr*/ BUS_SPACE_MAXADDR,
		/*highaddr*/ BUS_SPACE_MAXADDR,
		/*filter*/NULL, /*filterarg*/NULL,
		/*maxsize*/ dcons_conf->size,
		/*nsegments*/ 1,
		/*maxsegsz*/ BUS_SPACE_MAXSIZE_32BIT,
		/*flags*/ BUS_DMA_ALLOCNOW,
		/*lockfunc*/busdma_lock_mutex,
		/*lockarg*/&Giant,
		&sc->dma_tag);
	if (error != 0)
		return (error);
	error = FUNC2(sc->dma_tag, BUS_DMA_COHERENT, &sc->dma_map);
	if (error != 0)
		return (error);
	error = FUNC3(sc->dma_tag, sc->dma_map,
	    (void *)dcons_conf->buf, dcons_conf->size,
	    dmamap_cb, sc, 0);
	if (error != 0)
		return (error);
	sc->ehand = FUNC0(dcons_poll, dcons_crom_poll,
			 (void *)sc, 0);
	return (0);
}