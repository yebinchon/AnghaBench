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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct ecore_hwfn {int dummy; } ;
struct ecore_cid_acquired_map {int /*<<< orphan*/  cid_map; scalar_t__ start_cid; } ;
typedef  enum protocol_type { ____Placeholder_protocol_type } protocol_type ;

/* Variables and functions */
 int /*<<< orphan*/  COMMON_MAX_NUM_VFS ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ECORE_CXT_PF_CID ; 
 int /*<<< orphan*/  ECORE_MSG_CXT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct ecore_cid_acquired_map* OSAL_NULL ; 
 int FUNC3 (struct ecore_hwfn*,scalar_t__,int /*<<< orphan*/ ,int*,struct ecore_cid_acquired_map**) ; 

void FUNC4(struct ecore_hwfn *p_hwfn, u32 cid, u8 vfid)
{
	struct ecore_cid_acquired_map *p_map = OSAL_NULL;
	enum protocol_type type;
	bool b_acquired;
	u32 rel_cid;

	if (vfid != ECORE_CXT_PF_CID && vfid > COMMON_MAX_NUM_VFS) {
		FUNC0(p_hwfn, true,
			  "Trying to return incorrect CID belonging to VF %02x\n",
			  vfid);
		return;
	}

	/* Test acquired and find matching per-protocol map */
	b_acquired = FUNC3(p_hwfn, cid, vfid,
						 &type, &p_map);

	if (!b_acquired)
		return;

	rel_cid = cid - p_map->start_cid;
	FUNC2(rel_cid, p_map->cid_map);

	FUNC1(p_hwfn, ECORE_MSG_CXT,
		   "Released CID 0x%08x [rel. %08x] vfid %02x type %d\n",
		   cid, rel_cid, vfid, type);
}