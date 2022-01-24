#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int oq; } ;
struct octeon_device {TYPE_2__** droq; TYPE_1__ io_qmask; } ;
struct TYPE_4__ {int /*<<< orphan*/  droq_task; int /*<<< orphan*/  droq_taskqueue; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct octeon_device*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct octeon_device *oct)
{
	int	i, pending_pkts, pkt_cnt = 0, retry = 100;

	do {
		pending_pkts = 0;

		for (i = 0; i < FUNC1(oct); i++) {
			if (!(oct->io_qmask.oq & FUNC0(i)))
				continue;

			pkt_cnt = FUNC2(oct->droq[i]);
			if (pkt_cnt > 0) {
				pending_pkts += pkt_cnt;
				FUNC4(oct->droq[i]->droq_taskqueue,
						  &oct->droq[i]->droq_task);
			}
		}

		pkt_cnt = 0;
		FUNC3(1);
	} while (retry-- && pending_pkts);

	return (pkt_cnt);
}