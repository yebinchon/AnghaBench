#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ paddr; scalar_t__ vaddr; } ;
struct pvscsi_softc {int hcb_cnt; int /*<<< orphan*/  free_list; struct pvscsi_hcb* hcbs; int /*<<< orphan*/  lock; TYPE_1__ sg_list_dma; TYPE_1__ sense_buffer_dma; int /*<<< orphan*/  dev; int /*<<< orphan*/  buffer_dmat; } ;
struct pvscsi_sg_list {int dummy; } ;
struct pvscsi_hcb {int /*<<< orphan*/  callout; scalar_t__ sg_list_paddr; struct pvscsi_sg_list* sg_list; scalar_t__ sense_buffer_paddr; void* sense_buffer; int /*<<< orphan*/  dma_map; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int PVSCSI_SENSE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pvscsi_hcb*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  links ; 
 int FUNC5 (struct pvscsi_softc*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pvscsi_softc*,int) ; 

__attribute__((used)) static int
FUNC7(struct pvscsi_softc *sc)
{
	int i;
	int error;
	struct pvscsi_hcb *hcb;

	i = 0;

	error = FUNC5(sc, &sc->sg_list_dma,
	    sizeof(struct pvscsi_sg_list) * sc->hcb_cnt, 1);
	if (error) {
		FUNC4(sc->dev,
		    "Error allocation sg list DMA memory, error %d\n", error);
		goto fail;
	}

	error = FUNC5(sc, &sc->sense_buffer_dma,
				 PVSCSI_SENSE_LENGTH * sc->hcb_cnt, 1);
	if (error) {
		FUNC4(sc->dev,
		    "Error allocation sg list DMA memory, error %d\n", error);
		goto fail;
	}

	for (i = 0; i < sc->hcb_cnt; ++i) {
		hcb = sc->hcbs + i;

		error = FUNC2(sc->buffer_dmat, 0, &hcb->dma_map);
		if (error) {
			FUNC4(sc->dev,
			    "Error creating dma map for hcb %d, error %d\n",
			    i, error);
			goto fail;
		}

		hcb->sense_buffer =
		    (void *)((caddr_t)sc->sense_buffer_dma.vaddr +
		    PVSCSI_SENSE_LENGTH * i);
		hcb->sense_buffer_paddr =
		    sc->sense_buffer_dma.paddr + PVSCSI_SENSE_LENGTH * i;

		hcb->sg_list =
		    (struct pvscsi_sg_list *)((caddr_t)sc->sg_list_dma.vaddr +
		    sizeof(struct pvscsi_sg_list) * i);
		hcb->sg_list_paddr =
		    sc->sg_list_dma.paddr + sizeof(struct pvscsi_sg_list) * i;

		FUNC3(&hcb->callout, &sc->lock, 0);
	}

	FUNC0(&sc->free_list);
	for (i = (sc->hcb_cnt - 1); i >= 0; --i) {
		hcb = sc->hcbs + i;
		FUNC1(&sc->free_list, hcb, links);
	}

fail:
	if (error) {
		FUNC6(sc, i);
	}

	return (error);
}