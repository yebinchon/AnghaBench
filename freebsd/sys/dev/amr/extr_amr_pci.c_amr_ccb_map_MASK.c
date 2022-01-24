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
typedef  union amr_ccb {int dummy; } amr_ccb ;
struct amr_softc {int /*<<< orphan*/  amr_ccb; int /*<<< orphan*/  amr_ccb_busaddr; int /*<<< orphan*/  amr_ccb_dmamap; int /*<<< orphan*/  amr_ccb_dmat; int /*<<< orphan*/  amr_dev; int /*<<< orphan*/  amr_parent_dmat; } ;

/* Variables and functions */
 int AMR_MAXCMD ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  amr_sglist_helper ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(struct amr_softc *sc)
{
    int		ccbsize, error;

    /*
     * Passthrough and Extended passthrough structures will share the same
     * memory.
     */
    ccbsize = sizeof(union amr_ccb) * AMR_MAXCMD;
    error = FUNC0(sc->amr_parent_dmat,	/* parent */
				128, 0,			/* alignment,boundary */
				BUS_SPACE_MAXADDR_32BIT,/* lowaddr */
				BUS_SPACE_MAXADDR,	/* highaddr */
				NULL, NULL,		/* filter, filterarg */
				ccbsize,		/* maxsize */
				1,			/* nsegments */
				ccbsize,		/* maxsegsize */
				0,			/* flags */
				NULL, NULL,		/* lockfunc, lockarg */
				&sc->amr_ccb_dmat);
    if (error != 0) {
	FUNC4(sc->amr_dev, "can't allocate ccb tag\n");
	return (ENOMEM);
    }

    error = FUNC2(sc->amr_ccb_dmat, (void **)&sc->amr_ccb,
			     BUS_DMA_NOWAIT, &sc->amr_ccb_dmamap);
    if (error) {
	FUNC4(sc->amr_dev, "can't allocate ccb memory\n");
	return (ENOMEM);
    }
    FUNC1(sc->amr_ccb_dmat, sc->amr_ccb_dmamap, sc->amr_ccb,
		    ccbsize, amr_sglist_helper, &sc->amr_ccb_busaddr, 0);
    FUNC3(sc->amr_ccb, ccbsize);

    return (0);
}