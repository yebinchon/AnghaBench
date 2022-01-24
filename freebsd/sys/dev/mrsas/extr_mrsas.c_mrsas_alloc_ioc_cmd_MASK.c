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
struct mrsas_softc {int /*<<< orphan*/  mrsas_dev; int /*<<< orphan*/  ioc_init_phys_mem; int /*<<< orphan*/  ioc_init_mem; int /*<<< orphan*/  ioc_init_dmamap; int /*<<< orphan*/  ioc_init_tag; int /*<<< orphan*/  mrsas_parent_tag; } ;
typedef  int /*<<< orphan*/  MPI2_IOC_INIT_REQUEST ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mrsas_addr_cb ; 

int
FUNC5(struct mrsas_softc *sc)
{
	int ioc_init_size;

	/* Allocate IOC INIT command */
	ioc_init_size = 1024 + sizeof(MPI2_IOC_INIT_REQUEST);
	if (FUNC0(sc->mrsas_parent_tag,
	    1, 0,
	    BUS_SPACE_MAXADDR_32BIT,
	    BUS_SPACE_MAXADDR,
	    NULL, NULL,
	    ioc_init_size,
	    1,
	    ioc_init_size,
	    BUS_DMA_ALLOCNOW,
	    NULL, NULL,
	    &sc->ioc_init_tag)) {
		FUNC4(sc->mrsas_dev, "Cannot allocate ioc init tag\n");
		return (ENOMEM);
	}
	if (FUNC2(sc->ioc_init_tag, (void **)&sc->ioc_init_mem,
	    BUS_DMA_NOWAIT, &sc->ioc_init_dmamap)) {
		FUNC4(sc->mrsas_dev, "Cannot allocate ioc init cmd mem\n");
		return (ENOMEM);
	}
	FUNC3(sc->ioc_init_mem, ioc_init_size);
	if (FUNC1(sc->ioc_init_tag, sc->ioc_init_dmamap,
	    sc->ioc_init_mem, ioc_init_size, mrsas_addr_cb,
	    &sc->ioc_init_phys_mem, BUS_DMA_NOWAIT)) {
		FUNC4(sc->mrsas_dev, "Cannot load ioc init cmd mem\n");
		return (ENOMEM);
	}
	return (0);
}