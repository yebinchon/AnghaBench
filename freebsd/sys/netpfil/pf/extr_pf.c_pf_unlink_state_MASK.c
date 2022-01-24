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
typedef  int u_int ;
struct TYPE_6__ {scalar_t__ state; scalar_t__ seqlo; int /*<<< orphan*/  seqhi; } ;
struct TYPE_4__ {int /*<<< orphan*/  ptr; } ;
struct pf_state {scalar_t__ timeout; int /*<<< orphan*/  refs; int /*<<< orphan*/  tag; TYPE_3__ src; TYPE_2__** key; TYPE_1__ rule; } ;
struct pf_idhash {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * port; int /*<<< orphan*/ * addr; int /*<<< orphan*/  af; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pf_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ PFTM_UNLINKED ; 
 int PF_ENTER_LOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct pf_idhash*) ; 
 int /*<<< orphan*/  FUNC2 (struct pf_idhash*) ; 
 int /*<<< orphan*/  FUNC3 (struct pf_idhash*) ; 
 size_t FUNC4 (struct pf_state*) ; 
 size_t PF_SK_WIRE ; 
 scalar_t__ PF_TCPS_PROXY_DST ; 
 int /*<<< orphan*/  FUNC5 (struct pf_state*) ; 
 int TH_ACK ; 
 int TH_RST ; 
 struct pf_idhash* V_pf_idhash ; 
 int /*<<< orphan*/  FUNC6 (struct pf_state*) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC7 (struct pf_state*) ; 
 int FUNC8 (struct pf_state*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct pf_state*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int
FUNC12(struct pf_state *s, u_int flags)
{
	struct pf_idhash *ih = &V_pf_idhash[FUNC4(s)];

	if ((flags & PF_ENTER_LOCKED) == 0)
		FUNC2(ih);
	else
		FUNC1(ih);

	if (s->timeout == PFTM_UNLINKED) {
		/*
		 * State is being processed
		 * by pf_unlink_state() in
		 * an other thread.
		 */
		FUNC3(ih);
		return (0);	/* XXXGL: undefined actually */
	}

	if (s->src.state == PF_TCPS_PROXY_DST) {
		/* XXX wire key the right one? */
		FUNC9(NULL, s->rule.ptr, s->key[PF_SK_WIRE]->af,
		    &s->key[PF_SK_WIRE]->addr[1],
		    &s->key[PF_SK_WIRE]->addr[0],
		    s->key[PF_SK_WIRE]->port[1],
		    s->key[PF_SK_WIRE]->port[0],
		    s->src.seqhi, s->src.seqlo + 1,
		    TH_RST|TH_ACK, 0, 0, 0, 1, s->tag, NULL);
	}

	FUNC0(s, entry);
	FUNC10(s);

	if (&V_pfsync_delete_state_ptr != NULL)
		FUNC6(s);

	FUNC5(s);

	s->timeout = PFTM_UNLINKED;

	FUNC3(ih);

	FUNC7(s);
	/* pf_state_insert() initialises refs to 2, so we can never release the
	 * last reference here, only in pf_release_state(). */
	(void)FUNC11(&s->refs);

	return (FUNC8(s));
}