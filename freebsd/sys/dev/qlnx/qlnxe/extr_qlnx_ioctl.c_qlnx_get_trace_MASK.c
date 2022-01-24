#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_8__ {int* size; int cmd; int* dwords; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_2__ qlnx_trace_t ;
struct TYPE_7__ {struct ecore_hwfn* hwfns; } ;
struct TYPE_9__ {TYPE_1__ cdev; } ;
typedef  TYPE_3__ qlnx_host_t ;

/* Variables and functions */
 int DBG_STATUS_OK ; 
 int ENXIO ; 
#define  QLNX_FW_ASSERTS 132 
#define  QLNX_IGU_FIFO 131 
#define  QLNX_MCP_TRACE 130 
#define  QLNX_PROTECTION_OVERRIDE 129 
#define  QLNX_REG_FIFO 128 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,int,int) ; 
 int FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,void*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,void*,int,int*) ; 
 int FUNC5 (struct ecore_hwfn*,struct ecore_ptt*,void*,int,int*) ; 
 int FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,void*,int,int*) ; 
 int FUNC7 (struct ecore_hwfn*,struct ecore_ptt*,void*,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct ecore_ptt* FUNC9 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC10 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 void* FUNC11 (int) ; 

__attribute__((used)) static int
FUNC12(qlnx_host_t *ha, int hwfn_index, qlnx_trace_t *trace)
{
        int rval = -1;
        struct ecore_hwfn *p_hwfn;
        struct ecore_ptt *p_ptt;
	uint32_t num_dwords = 0;
	void *buffer;

	buffer = FUNC11(trace->size[hwfn_index]);
	if (buffer == NULL) { 
                FUNC0(ha,"qlnx_zalloc [%d, 0x%x]failed\n",
                           hwfn_index, trace->cmd);
                return (ENXIO);
	}
	FUNC8(FUNC3());

        p_hwfn = &ha->cdev.hwfns[hwfn_index];
        p_ptt = FUNC9(p_hwfn);

        if (!p_ptt) {
                FUNC0(ha, "ecore_ptt_acquire [%d, 0x%x]failed\n",
                           hwfn_index, trace->cmd);
                return (ENXIO);
        }

	switch (trace->cmd) {

	case QLNX_MCP_TRACE:
        	rval = FUNC5(p_hwfn, p_ptt,
				buffer, (trace->size[hwfn_index] >> 2),
				&num_dwords);
		break;

	case QLNX_REG_FIFO:
        	rval = FUNC7(p_hwfn, p_ptt,
				buffer, (trace->size[hwfn_index] >> 2),
				&num_dwords);
		break;

	case QLNX_IGU_FIFO:
        	rval = FUNC4(p_hwfn, p_ptt,
				buffer, (trace->size[hwfn_index] >> 2),
				&num_dwords);
		break;

	case QLNX_PROTECTION_OVERRIDE:
        	rval = FUNC6(p_hwfn, p_ptt,
				buffer, (trace->size[hwfn_index] >> 2),
				&num_dwords);
		break;

	case QLNX_FW_ASSERTS:
        	rval = FUNC2(p_hwfn, p_ptt,
				buffer, (trace->size[hwfn_index] >> 2),
				&num_dwords);
		break;
	}

        if (rval != DBG_STATUS_OK) {
                FUNC0(ha,"cmd = 0x%x failed [0x%x]\n", trace->cmd, rval);
		num_dwords = 0;
        }

        FUNC10(p_hwfn, p_ptt);

	trace->dwords[hwfn_index] = num_dwords;

	if (num_dwords) {
               	rval = FUNC1(buffer, trace->buffer[hwfn_index],
				(num_dwords << 2));
	}

        return (rval);
}