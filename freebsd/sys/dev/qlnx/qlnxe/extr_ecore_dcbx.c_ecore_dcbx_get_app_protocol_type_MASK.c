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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ecore_hwfn {int dummy; } ;
typedef  enum dcbx_protocol_type { ____Placeholder_dcbx_protocol_type } dcbx_protocol_type ;

/* Variables and functions */
 int DCBX_MAX_PROTOCOL_TYPE ; 
 int DCBX_PROTOCOL_ETH ; 
 int DCBX_PROTOCOL_FCOE ; 
 int DCBX_PROTOCOL_ISCSI ; 
 int DCBX_PROTOCOL_IWARP ; 
 int DCBX_PROTOCOL_ROCE ; 
 int DCBX_PROTOCOL_ROCE_V2 ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ECORE_MSG_DCB ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC7(struct ecore_hwfn *p_hwfn,
				 u32 app_prio_bitmap, u16 id,
				 enum dcbx_protocol_type *type, bool ieee)
{
	if (FUNC2(app_prio_bitmap, id, ieee)) {
		*type = DCBX_PROTOCOL_FCOE;
	} else if (FUNC5(app_prio_bitmap, id, ieee)) {
		*type = DCBX_PROTOCOL_ROCE;
	} else if (FUNC3(app_prio_bitmap, id, ieee)) {
		*type = DCBX_PROTOCOL_ISCSI;
	} else if (FUNC1(app_prio_bitmap, id, ieee)) {
		*type = DCBX_PROTOCOL_ETH;
	} else if (FUNC6(app_prio_bitmap, id, ieee)) {
		*type = DCBX_PROTOCOL_ROCE_V2;
	} else if (FUNC4(p_hwfn, app_prio_bitmap, id, ieee)) {
		*type = DCBX_PROTOCOL_IWARP;
	} else {
		*type = DCBX_MAX_PROTOCOL_TYPE;
		FUNC0(p_hwfn, ECORE_MSG_DCB,
			   "No action required, App TLV entry = 0x%x\n",
			   app_prio_bitmap);
		return false;
	}

	return true;
}