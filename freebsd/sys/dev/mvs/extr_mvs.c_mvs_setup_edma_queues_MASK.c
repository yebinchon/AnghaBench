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
typedef  int uint64_t ;
struct TYPE_2__ {int workrq_bus; int workrp_bus; int /*<<< orphan*/  workrp_map; int /*<<< orphan*/  workrp_tag; int /*<<< orphan*/  workrp; int /*<<< orphan*/  workrq_map; int /*<<< orphan*/  workrq_tag; } ;
struct mvs_channel {scalar_t__ in_idx; scalar_t__ out_idx; TYPE_1__ dma; int /*<<< orphan*/  r_mem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  EDMA_REQQBAH ; 
 int /*<<< orphan*/  EDMA_REQQIP ; 
 int /*<<< orphan*/  EDMA_REQQOP ; 
 int /*<<< orphan*/  EDMA_RESQBAH ; 
 int /*<<< orphan*/  EDMA_RESQIP ; 
 int /*<<< orphan*/  EDMA_RESQOP ; 
 int /*<<< orphan*/  MVS_WORKRP_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mvs_channel* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev)
{
	struct mvs_channel *ch = FUNC2(dev);
	uint64_t work;

	/* Requests queue. */
	work = ch->dma.workrq_bus;
	FUNC0(ch->r_mem, EDMA_REQQBAH, work >> 32);
	FUNC0(ch->r_mem, EDMA_REQQIP, work & 0xffffffff);
	FUNC0(ch->r_mem, EDMA_REQQOP, work & 0xffffffff);
	FUNC1(ch->dma.workrq_tag, ch->dma.workrq_map,
	    BUS_DMASYNC_PREWRITE);
	/* Responses queue. */
	FUNC3(ch->dma.workrp, 0xff, MVS_WORKRP_SIZE);
	work = ch->dma.workrp_bus;
	FUNC0(ch->r_mem, EDMA_RESQBAH, work >> 32);
	FUNC0(ch->r_mem, EDMA_RESQIP, work & 0xffffffff);
	FUNC0(ch->r_mem, EDMA_RESQOP, work & 0xffffffff);
	FUNC1(ch->dma.workrp_tag, ch->dma.workrp_map,
	    BUS_DMASYNC_PREREAD);
	ch->out_idx = 0;
	ch->in_idx = 0;
}