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
struct TYPE_2__ {int /*<<< orphan*/ * vaddr; } ;
struct pvscsi_softc {int req_ring_num_pages; int cmp_ring_num_pages; int msg_ring_num_pages; int /*<<< orphan*/ * msg_ring; int /*<<< orphan*/  dev; int /*<<< orphan*/ * cmp_ring; int /*<<< orphan*/ * req_ring; int /*<<< orphan*/ * rings_state; TYPE_1__ msg_ring_dma; int /*<<< orphan*/ * msg_ring_ppn; scalar_t__ use_msg; TYPE_1__ cmp_ring_dma; int /*<<< orphan*/ * cmp_ring_ppn; TYPE_1__ req_ring_dma; int /*<<< orphan*/ * req_ring_ppn; TYPE_1__ rings_state_dma; int /*<<< orphan*/  rings_state_ppn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct pvscsi_softc*,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pvscsi_softc*) ; 

__attribute__((used)) static int
FUNC4(struct pvscsi_softc *sc)
{
	int error;

	error = FUNC2(sc, &sc->rings_state_dma,
	    &sc->rings_state_ppn, 1);
	if (error) {
		FUNC1(sc->dev,
		    "Error allocating rings state, error = %d\n", error);
		goto fail;
	}
	sc->rings_state = sc->rings_state_dma.vaddr;

	error = FUNC2(sc, &sc->req_ring_dma, sc->req_ring_ppn,
	    sc->req_ring_num_pages);
	if (error) {
		FUNC1(sc->dev,
		    "Error allocating req ring pages, error = %d\n", error);
		goto fail;
	}
	sc->req_ring = sc->req_ring_dma.vaddr;

	error = FUNC2(sc, &sc->cmp_ring_dma, sc->cmp_ring_ppn,
	    sc->cmp_ring_num_pages);
	if (error) {
		FUNC1(sc->dev,
		    "Error allocating cmp ring pages, error = %d\n", error);
		goto fail;
	}
	sc->cmp_ring = sc->cmp_ring_dma.vaddr;

	sc->msg_ring = NULL;
	if (sc->use_msg) {
		error = FUNC2(sc, &sc->msg_ring_dma,
		    sc->msg_ring_ppn, sc->msg_ring_num_pages);
		if (error) {
			FUNC1(sc->dev,
			    "Error allocating cmp ring pages, error = %d\n",
			    error);
			goto fail;
		}
		sc->msg_ring = sc->msg_ring_dma.vaddr;
	}

	FUNC0(1, sc->dev, "rings_state: %p\n", sc->rings_state);
	FUNC0(1, sc->dev, "req_ring: %p - %u pages\n", sc->req_ring,
	    sc->req_ring_num_pages);
	FUNC0(1, sc->dev, "cmp_ring: %p - %u pages\n", sc->cmp_ring,
	    sc->cmp_ring_num_pages);
	FUNC0(1, sc->dev, "msg_ring: %p - %u pages\n", sc->msg_ring,
	    sc->msg_ring_num_pages);

fail:
	if (error) {
		FUNC3(sc);
	}
	return (error);
}