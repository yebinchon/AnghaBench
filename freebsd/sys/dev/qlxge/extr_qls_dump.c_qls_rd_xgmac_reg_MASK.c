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
typedef  int /*<<< orphan*/  qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  Q81_CTL_XGMAC_ADDR ; 
 int /*<<< orphan*/  Q81_CTL_XGMAC_DATA ; 
 int Q81_XGMAC_ADDR_R ; 
 int /*<<< orphan*/  Q81_XGMAC_ADDR_RDY ; 
 int /*<<< orphan*/  Q81_XGMAC_ADDR_XME ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(qla_host_t *ha, uint32_t reg, uint32_t*data)
{
	int ret = 0;

	ret = FUNC2(ha, Q81_CTL_XGMAC_ADDR, Q81_XGMAC_ADDR_RDY,
			Q81_XGMAC_ADDR_XME);
	if (ret)
		goto exit_qls_rd_xgmac_reg;

	FUNC1(ha, Q81_CTL_XGMAC_ADDR, (reg | Q81_XGMAC_ADDR_R));

	ret = FUNC2(ha, Q81_CTL_XGMAC_ADDR, Q81_XGMAC_ADDR_RDY,
			Q81_XGMAC_ADDR_XME);
	if (ret)
		goto exit_qls_rd_xgmac_reg;

	*data = FUNC0(ha, Q81_CTL_XGMAC_DATA);

exit_qls_rd_xgmac_reg:
	return ret;
}