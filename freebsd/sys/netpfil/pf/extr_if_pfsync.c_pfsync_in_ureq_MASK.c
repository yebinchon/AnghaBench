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
struct pfsync_upd_req {scalar_t__ id; scalar_t__ creatorid; } ;
struct pfsync_pkt {int dummy; } ;
struct pf_state {int state_flags; } ;
struct mbuf {scalar_t__ m_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  pfsyncs_badstate; int /*<<< orphan*/  pfsyncs_badlen; } ;

/* Variables and functions */
 int PFSTATE_NOSYNC ; 
 int /*<<< orphan*/  FUNC0 (struct pf_state*) ; 
 TYPE_1__ V_pfsyncstats ; 
 struct mbuf* FUNC1 (struct mbuf*,int,int,int*) ; 
 struct pf_state* FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pf_state*) ; 

__attribute__((used)) static int
FUNC5(struct pfsync_pkt *pkt, struct mbuf *m, int offset, int count)
{
	struct pfsync_upd_req *ur, *ura;
	struct mbuf *mp;
	int len = count * sizeof(*ur);
	int i, offp;

	struct pf_state *st;

	mp = FUNC1(m, offset, len, &offp);
	if (mp == NULL) {
		V_pfsyncstats.pfsyncs_badlen++;
		return (-1);
	}
	ura = (struct pfsync_upd_req *)(mp->m_data + offp);

	for (i = 0; i < count; i++) {
		ur = &ura[i];

		if (ur->id == 0 && ur->creatorid == 0)
			FUNC3();
		else {
			st = FUNC2(ur->id, ur->creatorid);
			if (st == NULL) {
				V_pfsyncstats.pfsyncs_badstate++;
				continue;
			}
			if (st->state_flags & PFSTATE_NOSYNC) {
				FUNC0(st);
				continue;
			}

			FUNC4(st);
			FUNC0(st);
		}
	}

	return (len);
}