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
struct TYPE_2__ {int /*<<< orphan*/ * work_tag; int /*<<< orphan*/ * work; scalar_t__ work_bus; int /*<<< orphan*/  work_map; int /*<<< orphan*/ * data_tag; } ;
struct fsl_sata_channel {TYPE_1__ dma; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct fsl_sata_channel* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev)
{
	struct fsl_sata_channel *ch = FUNC3(dev);

	if (ch->dma.data_tag) {
		FUNC0(ch->dma.data_tag);
		ch->dma.data_tag = NULL;
	}
	if (ch->dma.work_bus) {
		FUNC1(ch->dma.work_tag, ch->dma.work_map);
		FUNC2(ch->dma.work_tag, ch->dma.work, ch->dma.work_map);
		ch->dma.work_bus = 0;
		ch->dma.work = NULL;
	}
	if (ch->dma.work_tag) {
		FUNC0(ch->dma.work_tag);
		ch->dma.work_tag = NULL;
	}
}