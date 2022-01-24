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
typedef  int uint32_t ;
struct hhook_head {uintptr_t hhh_vid; int /*<<< orphan*/  hhh_refcount; int /*<<< orphan*/  hhh_flags; int /*<<< orphan*/  hhh_hooks; scalar_t__ hhh_nhooks; void* hhh_id; void* hhh_type; } ;
typedef  void* int32_t ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HHH_ISINVNET ; 
 int /*<<< orphan*/  FUNC2 (struct hhook_head*) ; 
 int HHOOK_HEADISINVNET ; 
 int HHOOK_WAITOK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct hhook_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_HHOOK ; 
 int M_NOWAIT ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  V_hhook_vhead_list ; 
 int /*<<< orphan*/ * curvnet ; 
 int /*<<< orphan*/  hhh_next ; 
 int /*<<< orphan*/  hhh_vnext ; 
 struct hhook_head* FUNC6 (void*,void*) ; 
 int /*<<< orphan*/  hhook_head_list ; 
 int /*<<< orphan*/  FUNC7 (struct hhook_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct hhook_head*,int) ; 
 struct hhook_head* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  n_hhookheads ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int
FUNC12(int32_t hhook_type, int32_t hhook_id, struct hhook_head **hhh,
    uint32_t flags)
{
	struct hhook_head *tmphhh;

	tmphhh = FUNC6(hhook_type, hhook_id);

	if (tmphhh != NULL) {
		/* Hook point previously registered. */
		FUNC7(tmphhh);
		return (EEXIST);
	}

	tmphhh = FUNC9(sizeof(struct hhook_head), M_HHOOK,
	    M_ZERO | ((flags & HHOOK_WAITOK) ? M_WAITOK : M_NOWAIT));

	if (tmphhh == NULL)
		return (ENOMEM);

	tmphhh->hhh_type = hhook_type;
	tmphhh->hhh_id = hhook_id;
	tmphhh->hhh_nhooks = 0;
	FUNC5(&tmphhh->hhh_hooks);
	FUNC2(tmphhh);
	FUNC10(&tmphhh->hhh_refcount, 1);

	FUNC0();
	if (flags & HHOOK_HEADISINVNET) {
		tmphhh->hhh_flags |= HHH_ISINVNET;
#ifdef VIMAGE
		KASSERT(curvnet != NULL, ("curvnet is NULL"));
		tmphhh->hhh_vid = (uintptr_t)curvnet;
		LIST_INSERT_HEAD(&V_hhook_vhead_list, tmphhh, hhh_vnext);
#endif
	}
	FUNC4(&hhook_head_list, tmphhh, hhh_next);
	n_hhookheads++;
	FUNC1();

	FUNC8(tmphhh, flags);

	if (hhh != NULL)
		*hhh = tmphhh;
	else
		FUNC11(&tmphhh->hhh_refcount);

	return (0);
}