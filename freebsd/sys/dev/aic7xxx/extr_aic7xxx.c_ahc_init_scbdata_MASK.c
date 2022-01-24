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
struct scsi_sense_data {int dummy; } ;
struct scb_data {scalar_t__ maxhscbs; scalar_t__ numscbs; struct scb* hscbs; int /*<<< orphan*/  init_level; int /*<<< orphan*/  sg_dmat; int /*<<< orphan*/  sense_busaddr; struct scb* sense; int /*<<< orphan*/  sense_dmamap; int /*<<< orphan*/  sense_dmat; int /*<<< orphan*/  hscb_busaddr; int /*<<< orphan*/  hscb_dmamap; int /*<<< orphan*/  hscb_dmat; struct scb* scbarray; int /*<<< orphan*/  sg_maps; int /*<<< orphan*/  free_scbs; } ;
struct scb {int dummy; } ;
struct hardware_scb {int dummy; } ;
struct ahc_softc {int /*<<< orphan*/  next_queued_scb; int /*<<< orphan*/  parent_dmat; struct scb_data* scb_data; } ;

/* Variables and functions */
 int AHC_SCB_MAX_ALLOC ; 
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 scalar_t__ BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct ahc_softc*) ; 
 int /*<<< orphan*/  ahc_dmamap_cb ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*) ; 
 char* FUNC3 (struct ahc_softc*) ; 
 scalar_t__ FUNC4 (struct ahc_softc*) ; 
 scalar_t__ FUNC5 (struct ahc_softc*,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scb*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ahc_softc*,int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct scb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

__attribute__((used)) static int
FUNC11(struct ahc_softc *ahc)
{
	struct scb_data *scb_data;

	scb_data = ahc->scb_data;
	FUNC0(&scb_data->free_scbs);
	FUNC0(&scb_data->sg_maps);

	/* Allocate SCB resources */
	scb_data->scbarray =
	    (struct scb *)FUNC8(sizeof(struct scb) * AHC_SCB_MAX_ALLOC,
				 M_DEVBUF, M_NOWAIT);
	if (scb_data->scbarray == NULL)
		return (ENOMEM);
	FUNC9(scb_data->scbarray, 0, sizeof(struct scb) * AHC_SCB_MAX_ALLOC);

	/* Determine the number of hardware SCBs and initialize them */

	scb_data->maxhscbs = FUNC4(ahc);
	if (ahc->scb_data->maxhscbs == 0) {
		FUNC10("%s: No SCB space found\n", FUNC3(ahc));
		return (ENXIO);
	}

	/*
	 * Create our DMA tags.  These tags define the kinds of device
	 * accessible memory allocations and memory mappings we will
	 * need to perform during normal operation.
	 *
	 * Unless we need to further restrict the allocation, we rely
	 * on the restrictions of the parent dmat, hence the common
	 * use of MAXADDR and MAXSIZE.
	 */

	/* DMA tag for our hardware scb structures */
	if (FUNC5(ahc, ahc->parent_dmat, /*alignment*/1,
			       /*boundary*/BUS_SPACE_MAXADDR_32BIT + 1,
			       /*lowaddr*/BUS_SPACE_MAXADDR_32BIT,
			       /*highaddr*/BUS_SPACE_MAXADDR,
			       /*filter*/NULL, /*filterarg*/NULL,
			       AHC_SCB_MAX_ALLOC * sizeof(struct hardware_scb),
			       /*nsegments*/1,
			       /*maxsegsz*/BUS_SPACE_MAXSIZE_32BIT,
			       /*flags*/0, &scb_data->hscb_dmat) != 0) {
		goto error_exit;
	}

	scb_data->init_level++;

	/* Allocation for our hscbs */
	if (FUNC7(ahc, scb_data->hscb_dmat,
			     (void **)&scb_data->hscbs,
			     BUS_DMA_NOWAIT | BUS_DMA_COHERENT,
			     &scb_data->hscb_dmamap) != 0) {
		goto error_exit;
	}

	scb_data->init_level++;

	/* And permanently map them */
	FUNC6(ahc, scb_data->hscb_dmat, scb_data->hscb_dmamap,
			scb_data->hscbs,
			AHC_SCB_MAX_ALLOC * sizeof(struct hardware_scb),
			ahc_dmamap_cb, &scb_data->hscb_busaddr, /*flags*/0);

	scb_data->init_level++;

	/* DMA tag for our sense buffers */
	if (FUNC5(ahc, ahc->parent_dmat, /*alignment*/1,
			       /*boundary*/BUS_SPACE_MAXADDR_32BIT + 1,
			       /*lowaddr*/BUS_SPACE_MAXADDR_32BIT,
			       /*highaddr*/BUS_SPACE_MAXADDR,
			       /*filter*/NULL, /*filterarg*/NULL,
			       AHC_SCB_MAX_ALLOC * sizeof(struct scsi_sense_data),
			       /*nsegments*/1,
			       /*maxsegsz*/BUS_SPACE_MAXSIZE_32BIT,
			       /*flags*/0, &scb_data->sense_dmat) != 0) {
		goto error_exit;
	}

	scb_data->init_level++;

	/* Allocate them */
	if (FUNC7(ahc, scb_data->sense_dmat,
			     (void **)&scb_data->sense,
			     BUS_DMA_NOWAIT, &scb_data->sense_dmamap) != 0) {
		goto error_exit;
	}

	scb_data->init_level++;

	/* And permanently map them */
	FUNC6(ahc, scb_data->sense_dmat, scb_data->sense_dmamap,
			scb_data->sense,
			AHC_SCB_MAX_ALLOC * sizeof(struct scsi_sense_data),
			ahc_dmamap_cb, &scb_data->sense_busaddr, /*flags*/0);

	scb_data->init_level++;

	/* DMA tag for our S/G structures.  We allocate in page sized chunks */
	if (FUNC5(ahc, ahc->parent_dmat, /*alignment*/8,
			       /*boundary*/BUS_SPACE_MAXADDR_32BIT + 1,
			       /*lowaddr*/BUS_SPACE_MAXADDR_32BIT,
			       /*highaddr*/BUS_SPACE_MAXADDR,
			       /*filter*/NULL, /*filterarg*/NULL,
			       PAGE_SIZE, /*nsegments*/1,
			       /*maxsegsz*/BUS_SPACE_MAXSIZE_32BIT,
			       /*flags*/0, &scb_data->sg_dmat) != 0) {
		goto error_exit;
	}

	scb_data->init_level++;

	/* Perform initial CCB allocation */
	FUNC9(scb_data->hscbs, 0,
	       AHC_SCB_MAX_ALLOC * sizeof(struct hardware_scb));
	while (FUNC1(ahc) != 0)
		;

	if (scb_data->numscbs == 0) {
		FUNC10("%s: ahc_init_scbdata - "
		       "Unable to allocate initial scbs\n",
		       FUNC3(ahc));
		goto error_exit;
	}

	/*
	 * Reserve the next queued SCB.
	 */
	ahc->next_queued_scb = FUNC2(ahc);

	/*
	 * Note that we were successful
	 */
	return (0); 

error_exit:

	return (ENOMEM);
}