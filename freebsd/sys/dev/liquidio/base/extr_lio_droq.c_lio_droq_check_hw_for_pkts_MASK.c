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
typedef  scalar_t__ uint32_t ;
struct octeon_device {int dummy; } ;
struct lio_droq {int /*<<< orphan*/  pkts_pending; scalar_t__ pkt_count; int /*<<< orphan*/  pkts_sent_reg; struct octeon_device* oct_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (struct octeon_device*,int /*<<< orphan*/ ) ; 

uint32_t
FUNC2(struct lio_droq *droq)
{
	struct octeon_device	*oct = droq->oct_dev;
	uint32_t		last_count;
	uint32_t		pkt_count = 0;

	pkt_count = FUNC1(oct, droq->pkts_sent_reg);

	last_count = pkt_count - droq->pkt_count;
	droq->pkt_count = pkt_count;

	/* we shall write to cnts at the end of processing */
	if (last_count)
		FUNC0(&droq->pkts_pending, last_count);

	return (last_count);
}