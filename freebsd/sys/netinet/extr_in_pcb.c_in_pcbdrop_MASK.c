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
struct inpcbport {int inp_refcount; int inp_flags; int /*<<< orphan*/  inp_pcbinfo; int /*<<< orphan*/  phd_epoch_ctx; int /*<<< orphan*/  phd_pcblist; struct inpcbport* inp_phd; int /*<<< orphan*/ * inp_ppcb; int /*<<< orphan*/ * inp_socket; } ;
struct inpcb {int inp_refcount; int inp_flags; int /*<<< orphan*/  inp_pcbinfo; int /*<<< orphan*/  phd_epoch_ctx; int /*<<< orphan*/  phd_pcblist; struct inpcb* inp_phd; int /*<<< orphan*/ * inp_ppcb; int /*<<< orphan*/ * inp_socket; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct inpcbport*,int /*<<< orphan*/ ) ; 
 int INP_DROPPED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int INP_INHASHLIST ; 
 int /*<<< orphan*/  FUNC4 (struct inpcbport*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inpcbport*) ; 
 int /*<<< orphan*/  FUNC8 (struct inpcbport*) ; 
 int /*<<< orphan*/  inp_hash ; 
 int /*<<< orphan*/  inp_portlist ; 
 int /*<<< orphan*/  inpcbport_free ; 
 int /*<<< orphan*/  net_epoch_preempt ; 
 int /*<<< orphan*/  phd_hash ; 

void
FUNC9(struct inpcb *inp)
{

	FUNC4(inp);
#ifdef INVARIANTS
	if (inp->inp_socket != NULL && inp->inp_ppcb != NULL)
		MPASS(inp->inp_refcount > 1);
#endif

	/*
	 * XXXRW: Possibly we should protect the setting of INP_DROPPED with
	 * the hash lock...?
	 */
	inp->inp_flags |= INP_DROPPED;
	if (inp->inp_flags & INP_INHASHLIST) {
		struct inpcbport *phd = inp->inp_phd;

		FUNC2(inp->inp_pcbinfo);
		FUNC8(inp);
		FUNC1(inp, inp_hash);
		FUNC1(inp, inp_portlist);
		if (FUNC0(&phd->phd_pcblist) == NULL) {
			FUNC1(phd, phd_hash);
			FUNC6(net_epoch_preempt, &phd->phd_epoch_ctx, inpcbport_free);
		}
		FUNC3(inp->inp_pcbinfo);
		inp->inp_flags &= ~INP_INHASHLIST;
#ifdef PCBGROUP
		in_pcbgroup_remove(inp);
#endif
	}
}