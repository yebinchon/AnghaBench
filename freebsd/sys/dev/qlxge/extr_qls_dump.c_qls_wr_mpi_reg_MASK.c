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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  Q81_CTL_PROC_ADDR ; 
 int /*<<< orphan*/  Q81_CTL_PROC_ADDR_ERR ; 
 int /*<<< orphan*/  Q81_CTL_PROC_ADDR_RDY ; 
 int /*<<< orphan*/  Q81_CTL_PROC_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(qla_host_t *ha, uint32_t reg, uint32_t data)
{
        int ret = 0;

        ret = FUNC1(ha, Q81_CTL_PROC_ADDR, Q81_CTL_PROC_ADDR_RDY,
			Q81_CTL_PROC_ADDR_ERR);
        if (ret)
                goto exit_qls_wr_mpi_reg;

        FUNC0(ha, Q81_CTL_PROC_DATA, data);

        FUNC0(ha, Q81_CTL_PROC_ADDR, reg);

        ret = FUNC1(ha, Q81_CTL_PROC_ADDR, Q81_CTL_PROC_ADDR_RDY,
			Q81_CTL_PROC_ADDR_ERR);
exit_qls_wr_mpi_reg:
        return (ret);
}