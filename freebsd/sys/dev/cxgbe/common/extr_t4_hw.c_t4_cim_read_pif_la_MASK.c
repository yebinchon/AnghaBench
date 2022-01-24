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
typedef  int u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_CIM_DEBUGCFG ; 
 int /*<<< orphan*/  A_CIM_DEBUGSTS ; 
 int /*<<< orphan*/  A_CIM_PI_LA_DEBUGDATA ; 
 int /*<<< orphan*/  A_CIM_PO_LA_DEBUGDATA ; 
 int CIM_PIFLA_SIZE ; 
 int F_LADBGEN ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int M_PILADBGRDPTR ; 
 int M_POLADBGRDPTR ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 void* FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct adapter *adap, u32 *pif_req, u32 *pif_rsp,
			unsigned int *pif_req_wrptr,
			unsigned int *pif_rsp_wrptr)
{
	int i, j;
	u32 cfg, val, req, rsp;

	cfg = FUNC4(adap, A_CIM_DEBUGCFG);
	if (cfg & F_LADBGEN)
		FUNC5(adap, A_CIM_DEBUGCFG, cfg ^ F_LADBGEN);

	val = FUNC4(adap, A_CIM_DEBUGSTS);
	req = FUNC1(val);
	rsp = FUNC0(val);
	if (pif_req_wrptr)
		*pif_req_wrptr = req;
	if (pif_rsp_wrptr)
		*pif_rsp_wrptr = rsp;

	for (i = 0; i < CIM_PIFLA_SIZE; i++) {
		for (j = 0; j < 6; j++) {
			FUNC5(adap, A_CIM_DEBUGCFG, FUNC3(req) |
				     FUNC2(rsp));
			*pif_req++ = FUNC4(adap, A_CIM_PO_LA_DEBUGDATA);
			*pif_rsp++ = FUNC4(adap, A_CIM_PI_LA_DEBUGDATA);
			req++;
			rsp++;
		}
		req = (req + 2) & M_POLADBGRDPTR;
		rsp = (rsp + 2) & M_PILADBGRDPTR;
	}
	FUNC5(adap, A_CIM_DEBUGCFG, cfg);
}