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
 int /*<<< orphan*/  A_CIM_PI_LA_MADEBUGDATA ; 
 int /*<<< orphan*/  A_CIM_PO_LA_MADEBUGDATA ; 
 int CIM_MALA_SIZE ; 
 int F_LADBGEN ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 void* FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct adapter *adap, u32 *ma_req, u32 *ma_rsp)
{
	u32 cfg;
	int i, j, idx;

	cfg = FUNC2(adap, A_CIM_DEBUGCFG);
	if (cfg & F_LADBGEN)
		FUNC3(adap, A_CIM_DEBUGCFG, cfg ^ F_LADBGEN);

	for (i = 0; i < CIM_MALA_SIZE; i++) {
		for (j = 0; j < 5; j++) {
			idx = 8 * i + j;
			FUNC3(adap, A_CIM_DEBUGCFG, FUNC1(idx) |
				     FUNC0(idx));
			*ma_req++ = FUNC2(adap, A_CIM_PO_LA_MADEBUGDATA);
			*ma_rsp++ = FUNC2(adap, A_CIM_PI_LA_MADEBUGDATA);
		}
	}
	FUNC3(adap, A_CIM_DEBUGCFG, cfg);
}