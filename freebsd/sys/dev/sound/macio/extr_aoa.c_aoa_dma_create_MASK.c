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
struct aoa_softc {struct aoa_dma* sc_intrp; int /*<<< orphan*/  sc_dev; } ;
struct aoa_dma {int /*<<< orphan*/  mutex; int /*<<< orphan*/  blksz; int /*<<< orphan*/  bufsz; int /*<<< orphan*/  tag; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_dma_tag_t ;

/* Variables and functions */
 int /*<<< orphan*/  AOA_BUFFER_SIZE ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct aoa_dma* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct aoa_dma * 
FUNC4(struct aoa_softc *sc)
{
	struct aoa_dma *dma;
	bus_dma_tag_t 	tag;
	int 		err;
	device_t	self;

	self = sc->sc_dev;
	err = FUNC0(FUNC1(self), 
	    4, 0, BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL, 
	    AOA_BUFFER_SIZE, 1, AOA_BUFFER_SIZE, 0, NULL, NULL, &tag);
	if (err != 0) 
		return (NULL);

	dma = FUNC2(sizeof(*dma), M_DEVBUF, M_WAITOK | M_ZERO);
	dma->tag = tag;
	dma->bufsz = AOA_BUFFER_SIZE;
	dma->blksz = PAGE_SIZE; /* initial blocksize */
	
	FUNC3(&dma->mutex, "AOA", NULL, MTX_DEF);

	sc->sc_intrp = dma;

	return (dma);
}