#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fsl_sata_dc_cb_args {int error; int /*<<< orphan*/  maddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_1__ bus_dma_segment_t ;

/* Variables and functions */

__attribute__((used)) static void
FUNC0(void *xsc, bus_dma_segment_t *segs, int nsegs, int error)
{
	struct fsl_sata_dc_cb_args *dcba = (struct fsl_sata_dc_cb_args *)xsc;

	if (!(dcba->error = error))
		dcba->maddr = segs[0].ds_addr;
}