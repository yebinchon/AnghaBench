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
struct msgdma_softc {int dummy; } ;
struct msgdma_desc {int dummy; } ;
struct msgdma_channel {int descs_num; struct msgdma_desc** descs_phys; struct msgdma_desc** dma_map; struct msgdma_desc** descs; int /*<<< orphan*/  dma_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct msgdma_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct msgdma_desc*,struct msgdma_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct msgdma_desc**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct msgdma_softc *sc, struct msgdma_channel *chan)
{
	struct msgdma_desc *desc;
	int nsegments;
	int i;

	nsegments = chan->descs_num;

	for (i = 0; i < nsegments; i++) {
		desc = chan->descs[i];
		FUNC1(chan->dma_tag, chan->dma_map[i]);
		FUNC2(chan->dma_tag, desc, chan->dma_map[i]);
	}

	FUNC0(chan->dma_tag);
	FUNC3(chan->descs, M_DEVBUF);
	FUNC3(chan->dma_map, M_DEVBUF);
	FUNC3(chan->descs_phys, M_DEVBUF);

	return (0);
}