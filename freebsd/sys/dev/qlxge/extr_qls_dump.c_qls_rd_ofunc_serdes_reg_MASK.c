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
 int Q81_CTL_XG_SERDES_ADDR ; 
 int Q81_CTL_XG_SERDES_DATA ; 
 int /*<<< orphan*/  Q81_XG_SERDES_ADDR_RDY ; 
 int Q81_XG_SERDES_ADDR_READ ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int
FUNC3(qla_host_t *ha, uint32_t reg, uint32_t *data)
{
	int ret;

	/* wait for reg to come ready */
	ret = FUNC1(ha, (Q81_CTL_XG_SERDES_ADDR >> 2),
			Q81_XG_SERDES_ADDR_RDY, 0);
	if (ret)
		goto exit_qls_rd_ofunc_serdes_reg;

	/* set up for reg read */
	FUNC2(ha, (Q81_CTL_XG_SERDES_ADDR >> 2),
		(reg | Q81_XG_SERDES_ADDR_READ));

	/* wait for reg to come ready */
	ret = FUNC1(ha, (Q81_CTL_XG_SERDES_ADDR >> 2),
			Q81_XG_SERDES_ADDR_RDY, 0);
	if (ret)
		goto exit_qls_rd_ofunc_serdes_reg;

	/* get the data */
	*data = FUNC0(ha, (Q81_CTL_XG_SERDES_DATA >> 2));

exit_qls_rd_ofunc_serdes_reg:
	return ret;
}