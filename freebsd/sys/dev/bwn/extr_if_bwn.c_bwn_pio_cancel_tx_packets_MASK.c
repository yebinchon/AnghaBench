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
struct bwn_pio_txqueue {struct bwn_pio_txpkt* tq_pkts; } ;
struct bwn_pio_txpkt {int /*<<< orphan*/ * tp_m; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct bwn_pio_txpkt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct bwn_pio_txqueue *tq)
{
	struct bwn_pio_txpkt *tp;
	unsigned int i;

	for (i = 0; i < FUNC0(tq->tq_pkts); i++) {
		tp = &(tq->tq_pkts[i]);
		if (tp->tp_m) {
			FUNC1(tp->tp_m);
			tp->tp_m = NULL;
		}
	}
}