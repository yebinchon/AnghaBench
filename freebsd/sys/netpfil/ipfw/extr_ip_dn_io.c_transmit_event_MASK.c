#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct mq {int dummy; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct dn_pkt_tag {int /*<<< orphan*/  output_time; } ;
struct TYPE_5__ {int subtype; } ;
struct TYPE_4__ {int /*<<< orphan*/  count; struct mbuf* head; } ;
struct delay_line {TYPE_2__ oid; TYPE_1__ mq; } ;
struct TYPE_6__ {int /*<<< orphan*/  evheap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ dn_cfg ; 
 struct dn_pkt_tag* FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct delay_line*) ; 
 int /*<<< orphan*/  FUNC3 (struct mq*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC4(struct mq *q, struct delay_line *dline, uint64_t now)
{
	struct mbuf *m;
	struct dn_pkt_tag *pkt = NULL;

	dline->oid.subtype = 0; /* not in heap */
	while ((m = dline->mq.head) != NULL) {
		pkt = FUNC1(m);
		if (!FUNC0(pkt->output_time, now))
			break;
		dline->mq.head = m->m_nextpkt;
		dline->mq.count--;
		FUNC3(q, m);
	}
	if (m != NULL) {
		dline->oid.subtype = 1; /* in heap */
		FUNC2(&dn_cfg.evheap, pkt->output_time, dline);
	}
}