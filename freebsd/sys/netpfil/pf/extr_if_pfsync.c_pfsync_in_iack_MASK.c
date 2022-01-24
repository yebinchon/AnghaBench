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
struct pfsync_pkt {int dummy; } ;
struct pfsync_ins_ack {int /*<<< orphan*/  creatorid; int /*<<< orphan*/  id; } ;
struct pf_state {int state_flags; } ;
struct mbuf {scalar_t__ m_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  pfsyncs_badlen; } ;

/* Variables and functions */
 int PFSTATE_ACK ; 
 int /*<<< orphan*/  FUNC0 (struct pf_state*) ; 
 TYPE_1__ V_pfsyncstats ; 
 struct mbuf* FUNC1 (struct mbuf*,int,int,int*) ; 
 struct pf_state* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pf_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct pfsync_pkt *pkt, struct mbuf *m, int offset, int count)
{
	struct pfsync_ins_ack *ia, *iaa;
	struct pf_state *st;

	struct mbuf *mp;
	int len = count * sizeof(*ia);
	int offp, i;

	mp = FUNC1(m, offset, len, &offp);
	if (mp == NULL) {
		V_pfsyncstats.pfsyncs_badlen++;
		return (-1);
	}
	iaa = (struct pfsync_ins_ack *)(mp->m_data + offp);

	for (i = 0; i < count; i++) {
		ia = &iaa[i];

		st = FUNC2(ia->id, ia->creatorid);
		if (st == NULL)
			continue;

		if (st->state_flags & PFSTATE_ACK) {
			FUNC3(st, 0);
		}
		FUNC0(st);
	}
	/*
	 * XXX this is not yet implemented, but we know the size of the
	 * message so we can skip it.
	 */

	return (count * sizeof(struct pfsync_ins_ack));
}