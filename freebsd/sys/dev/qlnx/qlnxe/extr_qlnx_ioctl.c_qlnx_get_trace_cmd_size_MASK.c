#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint16_t ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_5__ {struct ecore_hwfn* hwfns; } ;
struct TYPE_6__ {TYPE_1__ cdev; } ;
typedef  TYPE_2__ qlnx_host_t ;

/* Variables and functions */
 int DBG_STATUS_OK ; 
#define  QLNX_FW_ASSERTS 132 
#define  QLNX_IGU_FIFO 131 
#define  QLNX_MCP_TRACE 130 
#define  QLNX_PROTECTION_OVERRIDE 129 
#define  QLNX_REG_FIFO 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int,int) ; 
 int FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,int*) ; 
 int FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,int*) ; 
 int FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,int*) ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,int*) ; 
 int FUNC5 (struct ecore_hwfn*,struct ecore_ptt*,int*) ; 
 struct ecore_ptt* FUNC6 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_hwfn*,struct ecore_ptt*) ; 

__attribute__((used)) static uint32_t
FUNC8(qlnx_host_t *ha, int hwfn_index, uint16_t cmd)
{
        int rval = -1;
        struct ecore_hwfn *p_hwfn;
        struct ecore_ptt *p_ptt;
	uint32_t num_dwords = 0;

        p_hwfn = &ha->cdev.hwfns[hwfn_index];
        p_ptt = FUNC6(p_hwfn);

        if (!p_ptt) {
                FUNC0(ha, "ecore_ptt_acquire [%d, 0x%x]failed\n",
                           hwfn_index, cmd);
                return (0);
        }

	switch (cmd) {

	case QLNX_MCP_TRACE:
        	rval = FUNC3(p_hwfn,
				p_ptt, &num_dwords);
		break;

	case QLNX_REG_FIFO:
        	rval = FUNC5(p_hwfn,
				p_ptt, &num_dwords);
		break;

	case QLNX_IGU_FIFO:
        	rval = FUNC2(p_hwfn,
				p_ptt, &num_dwords);
		break;

	case QLNX_PROTECTION_OVERRIDE:
        	rval = FUNC4(p_hwfn,
				p_ptt, &num_dwords);
		break;

	case QLNX_FW_ASSERTS:
        	rval = FUNC1(p_hwfn,
				p_ptt, &num_dwords);
		break;
	}

        if (rval != DBG_STATUS_OK) {
                FUNC0(ha,"cmd = 0x%x failed [0x%x]\n", cmd, rval);
		num_dwords = 0;
        }

        FUNC7(p_hwfn, p_ptt);

        return ((num_dwords * sizeof (uint32_t)));
}