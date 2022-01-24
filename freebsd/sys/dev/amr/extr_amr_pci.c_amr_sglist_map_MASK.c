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
struct amr_softc {int amr_sgbusaddr; struct amr_sgentry* amr_sgtable; struct amr_sg64entry* amr_sg64table; int /*<<< orphan*/  amr_sg_dmamap; int /*<<< orphan*/  amr_sg_dmat; int /*<<< orphan*/  amr_dev; int /*<<< orphan*/  amr_parent_dmat; } ;
struct amr_sgentry {int dummy; } ;
struct amr_sg64entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct amr_softc*) ; 
 int AMR_MAXCMD ; 
 int AMR_NSEG ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  amr_sglist_helper ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC7(struct amr_softc *sc)
{
    size_t	segsize;
    void	*p;
    int		error;

    FUNC5(1);

    /*
     * Create a single tag describing a region large enough to hold all of
     * the s/g lists we will need.
     *
     * Note that we could probably use AMR_LIMITCMD here, but that may become
     * tunable.
     */
    if (FUNC0(sc))
	segsize = sizeof(struct amr_sg64entry) * AMR_NSEG * AMR_MAXCMD;
    else
	segsize = sizeof(struct amr_sgentry) * AMR_NSEG * AMR_MAXCMD;

    error = FUNC1(sc->amr_parent_dmat, 	/* parent */
			       512, 0, 			/* alignment,boundary */
			       BUS_SPACE_MAXADDR_32BIT,	/* lowaddr */
			       BUS_SPACE_MAXADDR, 	/* highaddr */
			       NULL, NULL, 		/* filter, filterarg */
			       segsize, 1,		/* maxsize, nsegments */
			       BUS_SPACE_MAXSIZE_32BIT,	/* maxsegsize */
			       0,			/* flags */
			       NULL, NULL,		/* lockfunc, lockarg */
			       &sc->amr_sg_dmat);
    if (error != 0) {
	FUNC6(sc->amr_dev, "can't allocate scatter/gather DMA tag\n");
	return(ENOMEM);
    }

    /*
     * Allocate enough s/g maps for all commands and permanently map them into
     * controller-visible space.
     *	
     * XXX this assumes we can get enough space for all the s/g maps in one 
     * contiguous slab.  We may need to switch to a more complex arrangement
     * where we allocate in smaller chunks and keep a lookup table from slot
     * to bus address.
     *
     * XXX HACK ALERT:	at least some controllers don't like the s/g memory
     *			being allocated below 0x2000.  We leak some memory if
     *			we get some below this mark and allocate again.  We
     *			should be able to avoid this with the tag setup, but
     *			that does't seem to work.
     */
retry:
    error = FUNC3(sc->amr_sg_dmat, (void **)&p, BUS_DMA_NOWAIT, &sc->amr_sg_dmamap);
    if (error) {
	FUNC6(sc->amr_dev, "can't allocate s/g table\n");
	return(ENOMEM);
    }
    FUNC2(sc->amr_sg_dmat, sc->amr_sg_dmamap, p, segsize, amr_sglist_helper, &sc->amr_sgbusaddr, 0);
    if (sc->amr_sgbusaddr < 0x2000) {
	FUNC4(1, "s/g table too low (0x%x), reallocating\n", sc->amr_sgbusaddr);
	goto retry;
    }

    if (FUNC0(sc))
	sc->amr_sg64table = (struct amr_sg64entry *)p;
    sc->amr_sgtable = (struct amr_sgentry *)p;

    return(0);
}