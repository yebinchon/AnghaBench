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
struct TYPE_2__ {int /*<<< orphan*/ * workrq_tag; int /*<<< orphan*/ * workrq; scalar_t__ workrq_bus; int /*<<< orphan*/  workrq_map; int /*<<< orphan*/ * workrp_tag; int /*<<< orphan*/ * workrp; scalar_t__ workrp_bus; int /*<<< orphan*/  workrp_map; int /*<<< orphan*/ * data_tag; } ;
struct mvs_channel {TYPE_1__ dma; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mvs_channel* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev)
{
	struct mvs_channel *ch = FUNC3(dev);

	if (ch->dma.data_tag) {
		FUNC0(ch->dma.data_tag);
		ch->dma.data_tag = NULL;
	}
	if (ch->dma.workrp_bus) {
		FUNC1(ch->dma.workrp_tag, ch->dma.workrp_map);
		FUNC2(ch->dma.workrp_tag,
		    ch->dma.workrp, ch->dma.workrp_map);
		ch->dma.workrp_bus = 0;
		ch->dma.workrp = NULL;
	}
	if (ch->dma.workrp_tag) {
		FUNC0(ch->dma.workrp_tag);
		ch->dma.workrp_tag = NULL;
	}
	if (ch->dma.workrq_bus) {
		FUNC1(ch->dma.workrq_tag, ch->dma.workrq_map);
		FUNC2(ch->dma.workrq_tag,
		    ch->dma.workrq, ch->dma.workrq_map);
		ch->dma.workrq_bus = 0;
		ch->dma.workrq = NULL;
	}
	if (ch->dma.workrq_tag) {
		FUNC0(ch->dma.workrq_tag);
		ch->dma.workrq_tag = NULL;
	}
}