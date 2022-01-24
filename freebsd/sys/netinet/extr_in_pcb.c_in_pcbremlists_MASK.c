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
struct inpcbport {int inp_flags; int /*<<< orphan*/  phd_epoch_ctx; int /*<<< orphan*/  phd_pcblist; struct inpcbport* inp_phd; scalar_t__ inp_gencnt; struct inpcbinfo* inp_pcbinfo; } ;
struct inpcbinfo {int /*<<< orphan*/  ipi_count; scalar_t__ ipi_gencnt; } ;
struct inpcb {int inp_flags; int /*<<< orphan*/  phd_epoch_ctx; int /*<<< orphan*/  phd_pcblist; struct inpcb* inp_phd; scalar_t__ inp_gencnt; struct inpcbinfo* inp_pcbinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcbport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcbinfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcbinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct inpcbinfo*) ; 
 int INP_INHASHLIST ; 
 int /*<<< orphan*/  FUNC5 (struct inpcbinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct inpcbport*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct inpcbinfo V_tcbinfo ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inpcbport*) ; 
 int /*<<< orphan*/  FUNC10 (struct inpcbport*) ; 
 int /*<<< orphan*/  inp_hash ; 
 int /*<<< orphan*/  inp_list ; 
 int /*<<< orphan*/  inp_portlist ; 
 int /*<<< orphan*/  inpcbport_free ; 
 int /*<<< orphan*/  net_epoch_preempt ; 
 int /*<<< orphan*/  phd_hash ; 

__attribute__((used)) static void
FUNC11(struct inpcb *inp)
{
	struct inpcbinfo *pcbinfo = inp->inp_pcbinfo;

#ifdef INVARIANTS
	if (pcbinfo == &V_tcbinfo) {
		NET_EPOCH_ASSERT();
	} else {
		INP_INFO_WLOCK_ASSERT(pcbinfo);
	}
#endif

	FUNC6(inp);
	FUNC5(pcbinfo);

	inp->inp_gencnt = ++pcbinfo->ipi_gencnt;
	if (inp->inp_flags & INP_INHASHLIST) {
		struct inpcbport *phd = inp->inp_phd;

		FUNC2(pcbinfo);

		/* XXX: Only do if SO_REUSEPORT_LB set? */
		FUNC10(inp);

		FUNC1(inp, inp_hash);
		FUNC1(inp, inp_portlist);
		if (FUNC0(&phd->phd_pcblist) == NULL) {
			FUNC1(phd, phd_hash);
			FUNC8(net_epoch_preempt, &phd->phd_epoch_ctx, inpcbport_free);
		}
		FUNC3(pcbinfo);
		inp->inp_flags &= ~INP_INHASHLIST;
	}
	FUNC1(inp, inp_list);
	pcbinfo->ipi_count--;
#ifdef PCBGROUP
	in_pcbgroup_remove(inp);
#endif
}