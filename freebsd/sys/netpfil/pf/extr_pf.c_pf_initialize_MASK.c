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
typedef  scalar_t__ u_int ;
struct pf_state_key {int dummy; } ;
struct pf_state {int dummy; } ;
struct pf_srchash {int /*<<< orphan*/  lock; } ;
struct pf_src_node {int dummy; } ;
struct pf_keyhash {int /*<<< orphan*/  lock; } ;
struct pf_idhash {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {void* zone; } ;

/* Variables and functions */
 int MTX_DEF ; 
 int MTX_DUPOK ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_PFHASH ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PFSNODE_HIWAT ; 
 int /*<<< orphan*/  PFSTATE_HIWAT ; 
 scalar_t__ PF_HASHSIZ ; 
 size_t PF_LIMIT_SRC_NODES ; 
 size_t PF_LIMIT_STATES ; 
 scalar_t__ PF_SRCHASHSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 int /*<<< orphan*/ * V_pf_altq_ifs_active ; 
 int /*<<< orphan*/ * V_pf_altq_ifs_inactive ; 
 int /*<<< orphan*/ * V_pf_altqs ; 
 int /*<<< orphan*/ * V_pf_altqs_active ; 
 int /*<<< orphan*/ * V_pf_altqs_inactive ; 
 int /*<<< orphan*/  V_pf_hashseed ; 
 struct pf_keyhash* V_pf_idhash ; 
 struct pf_keyhash* V_pf_keyhash ; 
 TYPE_1__* V_pf_limits ; 
 int /*<<< orphan*/  V_pf_overloadqueue ; 
 int /*<<< orphan*/  V_pf_overloadtask ; 
 int /*<<< orphan*/  V_pf_pabuf ; 
 int /*<<< orphan*/  V_pf_sendqueue ; 
 void* V_pf_sources_z ; 
 struct pf_srchash* V_pf_srchash ; 
 void* V_pf_state_key_z ; 
 void* V_pf_state_z ; 
 int /*<<< orphan*/  V_pf_unlinked_rules ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  curvnet ; 
 int /*<<< orphan*/  FUNC5 (struct pf_keyhash*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ pf_hashmask ; 
 scalar_t__ pf_hashsize ; 
 int /*<<< orphan*/  pf_overload_task ; 
 scalar_t__ pf_srchashmask ; 
 scalar_t__ pf_srchashsize ; 
 int /*<<< orphan*/ * pf_state_key_ctor ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 
 void* FUNC10 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*,char*) ; 

void
FUNC13()
{
	struct pf_keyhash	*kh;
	struct pf_idhash	*ih;
	struct pf_srchash	*sh;
	u_int i;

	if (pf_hashsize == 0 || !FUNC8(pf_hashsize))
		pf_hashsize = PF_HASHSIZ;
	if (pf_srchashsize == 0 || !FUNC8(pf_srchashsize))
		pf_srchashsize = PF_SRCHASHSIZ;

	V_pf_hashseed = FUNC4();

	/* States and state keys storage. */
	V_pf_state_z = FUNC10("pf states", sizeof(struct pf_state),
	    NULL, NULL, NULL, NULL, UMA_ALIGN_PTR, 0);
	V_pf_limits[PF_LIMIT_STATES].zone = V_pf_state_z;
	FUNC11(V_pf_state_z, PFSTATE_HIWAT);
	FUNC12(V_pf_state_z, "PF states limit reached");

	V_pf_state_key_z = FUNC10("pf state keys",
	    sizeof(struct pf_state_key), pf_state_key_ctor, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, 0);

	V_pf_keyhash = FUNC6(pf_hashsize, sizeof(struct pf_keyhash),
	    M_PFHASH, M_NOWAIT | M_ZERO);
	V_pf_idhash = FUNC6(pf_hashsize, sizeof(struct pf_idhash),
	    M_PFHASH, M_NOWAIT | M_ZERO);
	if (V_pf_keyhash == NULL || V_pf_idhash == NULL) {
		FUNC9("pf: Unable to allocate memory for "
		    "state_hashsize %lu.\n", pf_hashsize);

		FUNC5(V_pf_keyhash, M_PFHASH);
		FUNC5(V_pf_idhash, M_PFHASH);

		pf_hashsize = PF_HASHSIZ;
		V_pf_keyhash = FUNC6(pf_hashsize,
		    sizeof(struct pf_keyhash), M_PFHASH, M_WAITOK | M_ZERO);
		V_pf_idhash = FUNC6(pf_hashsize,
		    sizeof(struct pf_idhash), M_PFHASH, M_WAITOK | M_ZERO);
	}

	pf_hashmask = pf_hashsize - 1;
	for (i = 0, kh = V_pf_keyhash, ih = V_pf_idhash; i <= pf_hashmask;
	    i++, kh++, ih++) {
		FUNC7(&kh->lock, "pf_keyhash", NULL, MTX_DEF | MTX_DUPOK);
		FUNC7(&ih->lock, "pf_idhash", NULL, MTX_DEF);
	}

	/* Source nodes. */
	V_pf_sources_z = FUNC10("pf source nodes",
	    sizeof(struct pf_src_node), NULL, NULL, NULL, NULL, UMA_ALIGN_PTR,
	    0);
	V_pf_limits[PF_LIMIT_SRC_NODES].zone = V_pf_sources_z;
	FUNC11(V_pf_sources_z, PFSNODE_HIWAT);
	FUNC12(V_pf_sources_z, "PF source nodes limit reached");

	V_pf_srchash = FUNC6(pf_srchashsize,
	    sizeof(struct pf_srchash), M_PFHASH, M_NOWAIT | M_ZERO);
	if (V_pf_srchash == NULL) {
		FUNC9("pf: Unable to allocate memory for "
		    "source_hashsize %lu.\n", pf_srchashsize);

		pf_srchashsize = PF_SRCHASHSIZ;
		V_pf_srchash = FUNC6(pf_srchashsize,
		    sizeof(struct pf_srchash), M_PFHASH, M_WAITOK | M_ZERO);
	}

	pf_srchashmask = pf_srchashsize - 1;
	for (i = 0, sh = V_pf_srchash; i <= pf_srchashmask; i++, sh++)
		FUNC7(&sh->lock, "pf_srchash", NULL, MTX_DEF);

	/* ALTQ */
	FUNC2(&V_pf_altqs[0]);
	FUNC2(&V_pf_altqs[1]);
	FUNC2(&V_pf_altqs[2]);
	FUNC2(&V_pf_altqs[3]);
	FUNC2(&V_pf_pabuf);
	V_pf_altqs_active = &V_pf_altqs[0];
	V_pf_altq_ifs_active = &V_pf_altqs[1];
	V_pf_altqs_inactive = &V_pf_altqs[2];
	V_pf_altq_ifs_inactive = &V_pf_altqs[3];

	/* Send & overload+flush queues. */
	FUNC1(&V_pf_sendqueue);
	FUNC0(&V_pf_overloadqueue);
	FUNC3(&V_pf_overloadtask, 0, pf_overload_task, curvnet);

	/* Unlinked, but may be referenced rules. */
	FUNC2(&V_pf_unlinked_rules);
}