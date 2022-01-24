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
struct mly_softc {int /*<<< orphan*/  mly_sg_table; int /*<<< orphan*/  mly_sg_dmamap; int /*<<< orphan*/  mly_sg_dmat; int /*<<< orphan*/  mly_parent_dmat; } ;
struct mly_sg_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int ENOMEM ; 
 int MLY_MAX_COMMANDS ; 
 int MLY_MAX_SGENTRIES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,struct mly_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mly_softc*,char*) ; 
 int /*<<< orphan*/  mly_sg_map_helper ; 

__attribute__((used)) static int
FUNC5(struct mly_softc *sc)
{
    size_t	segsize;

    FUNC3(1);

    /*
     * Create a single tag describing a region large enough to hold all of
     * the s/g lists we will need.
     */
    segsize = sizeof(struct mly_sg_entry) * MLY_MAX_COMMANDS *MLY_MAX_SGENTRIES;
    if (FUNC0(sc->mly_parent_dmat,		/* parent */
			   1, 0, 			/* alignment,boundary */
			   BUS_SPACE_MAXADDR,		/* lowaddr */
			   BUS_SPACE_MAXADDR, 		/* highaddr */
			   NULL, NULL, 			/* filter, filterarg */
			   segsize, 1,			/* maxsize, nsegments */
			   BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
			   BUS_DMA_ALLOCNOW,		/* flags */
			   NULL, NULL,			/* lockfunc, lockarg */
			   &sc->mly_sg_dmat)) {
	FUNC4(sc, "can't allocate scatter/gather DMA tag\n");
	return(ENOMEM);
    }

    /*
     * Allocate enough s/g maps for all commands and permanently map them into
     * controller-visible space.
     *	
     * XXX this assumes we can get enough space for all the s/g maps in one 
     * contiguous slab.
     */
    if (FUNC2(sc->mly_sg_dmat, (void **)&sc->mly_sg_table,
			 BUS_DMA_NOWAIT, &sc->mly_sg_dmamap)) {
	FUNC4(sc, "can't allocate s/g table\n");
	return(ENOMEM);
    }
    if (FUNC1(sc->mly_sg_dmat, sc->mly_sg_dmamap, sc->mly_sg_table,
			segsize, mly_sg_map_helper, sc, BUS_DMA_NOWAIT) != 0)
	return (ENOMEM);
    return(0);
}