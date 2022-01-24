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
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef  enum ecore_mib_read_type { ____Placeholder_ecore_mib_read_type } ecore_mib_read_type ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*,int) ; 
#define  ECORE_DCBX_LOCAL_LLDP_MIB 132 
#define  ECORE_DCBX_LOCAL_MIB 131 
#define  ECORE_DCBX_OPERATIONAL_MIB 130 
#define  ECORE_DCBX_REMOTE_LLDP_MIB 129 
#define  ECORE_DCBX_REMOTE_MIB 128 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC2 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC3 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,int) ; 
 int FUNC5 (struct ecore_hwfn*,struct ecore_ptt*,int) ; 
 int FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,int) ; 

__attribute__((used)) static enum _ecore_status_t FUNC7(struct ecore_hwfn *p_hwfn,
						struct ecore_ptt *p_ptt,
						enum ecore_mib_read_type type)
{
	enum _ecore_status_t rc = ECORE_INVAL;

	switch (type) {
	case ECORE_DCBX_OPERATIONAL_MIB:
		FUNC1(p_hwfn, p_ptt);
		rc = FUNC4(p_hwfn, p_ptt, type);
		break;
	case ECORE_DCBX_REMOTE_MIB:
		rc = FUNC6(p_hwfn, p_ptt, type);
		break;
	case ECORE_DCBX_LOCAL_MIB:
		rc = FUNC3(p_hwfn, p_ptt);
		break;
	case ECORE_DCBX_REMOTE_LLDP_MIB:
		rc = FUNC5(p_hwfn, p_ptt, type);
		break;
	case ECORE_DCBX_LOCAL_LLDP_MIB:
		rc = FUNC2(p_hwfn, p_ptt);
		break;
	default:
		FUNC0(p_hwfn, "MIB read err, unknown mib type %d\n", type);
	}

	return rc;
}