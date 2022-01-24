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
typedef  int /*<<< orphan*/  uintmax_t ;
struct ctlstat_context {int cur_items; int numdevs; int /*<<< orphan*/  item_mask; struct ctl_io_stats* cur_stats; } ;
struct ctl_io_stats {int item; int /*<<< orphan*/ * dma_time; int /*<<< orphan*/ * time; scalar_t__* dmas; scalar_t__* operations; scalar_t__* bytes; } ;

/* Variables and functions */
 int CTL_STATS_NUM_TYPES ; 
 scalar_t__ FUNC0 (struct ctlstat_context*) ; 
 scalar_t__ FUNC1 (struct ctlstat_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 char** iotypes ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void
FUNC5(struct ctlstat_context *ctx)
{
	int iotype, i, n;
	struct ctl_io_stats *stats = ctx->cur_stats;

	for (i = n = 0; i < ctx->cur_items;i++) {
		if (FUNC0(ctx) && FUNC3(ctx->item_mask,
		    (int)stats[i].item) == 0)
			continue;
		FUNC4("%s %d\n", FUNC1(ctx) ? "port" : "lun", stats[i].item);
		for (iotype = 0; iotype < CTL_STATS_NUM_TYPES; iotype++) {
			FUNC4("  io type %d (%s)\n", iotype, iotypes[iotype]);
			FUNC4("   bytes %ju\n", (uintmax_t)
			    stats[i].bytes[iotype]);
			FUNC4("   operations %ju\n", (uintmax_t)
			    stats[i].operations[iotype]);
			FUNC4("   dmas %ju\n", (uintmax_t)
			    stats[i].dmas[iotype]);
			FUNC4("   io time ");
			FUNC2(stats[i].time[iotype]);
			FUNC4("\n   dma time ");
			FUNC2(stats[i].dma_time[iotype]);
			FUNC4("\n");
		}
		if (++n >= ctx->numdevs)
			break;
	}
}