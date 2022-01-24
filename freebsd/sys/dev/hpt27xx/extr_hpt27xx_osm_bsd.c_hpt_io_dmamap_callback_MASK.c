#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  ds_len; int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_6__ bus_dma_segment_t ;
struct TYPE_15__ {int physical_sg; scalar_t__ data_out; scalar_t__ data_in; } ;
struct TYPE_22__ {TYPE_2__ flags; TYPE_7__* psg; int /*<<< orphan*/  priv; } ;
struct TYPE_21__ {TYPE_5__* ccb; int /*<<< orphan*/  timeout; int /*<<< orphan*/  dma_map; TYPE_3__* vbus_ext; } ;
struct TYPE_14__ {int /*<<< orphan*/  bus; } ;
struct TYPE_20__ {int eot; int /*<<< orphan*/  size; TYPE_1__ addr; } ;
struct TYPE_17__ {int /*<<< orphan*/  timeout_ch; } ;
struct TYPE_18__ {TYPE_4__ ccb_h; } ;
struct TYPE_16__ {int /*<<< orphan*/  io_dmat; } ;
typedef  TYPE_7__* PSG ;
typedef  TYPE_8__* POS_CMDEXT ;
typedef  TYPE_9__* PCOMMAND ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HPT_OSM_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  hpt_timeout ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*) ; 
 int os_max_sg_descriptors ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void *arg, bus_dma_segment_t *segs, int nsegs, int error)
{
	PCOMMAND pCmd = (PCOMMAND)arg;
	POS_CMDEXT ext = (POS_CMDEXT)pCmd->priv;
	PSG psg = pCmd->psg;
	int idx;
	
	FUNC0(pCmd->flags.physical_sg);
	
	if (error)
		FUNC4("busdma error");
		
	FUNC0(nsegs<=os_max_sg_descriptors);

	if (nsegs != 0) {
		for (idx = 0; idx < nsegs; idx++, psg++) {
			psg->addr.bus = segs[idx].ds_addr;
			psg->size = segs[idx].ds_len;
			psg->eot = 0;
		}
		psg[-1].eot = 1;
	
		if (pCmd->flags.data_in) {
			FUNC1(ext->vbus_ext->io_dmat, ext->dma_map,
			    BUS_DMASYNC_PREREAD);
		}
		else if (pCmd->flags.data_out) {
			FUNC1(ext->vbus_ext->io_dmat, ext->dma_map,
			    BUS_DMASYNC_PREWRITE);
		}
	}
#if (__FreeBSD_version >= 1000510)	
	callout_reset(&ext->timeout, HPT_OSM_TIMEOUT, hpt_timeout, pCmd);
#else 
	ext->ccb->ccb_h.timeout_ch = FUNC5(hpt_timeout, pCmd, HPT_OSM_TIMEOUT);
#endif
	FUNC3(pCmd);
}