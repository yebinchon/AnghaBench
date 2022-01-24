#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ifnet {int dummy; } ;
struct TYPE_5__ {int dat; scalar_t__ val; scalar_t__ pending; } ;
struct TYPE_7__ {TYPE_1__ s; int /*<<< orphan*/  u64; } ;
typedef  TYPE_3__ cvmx_smi_rd_dat_t ;
struct TYPE_6__ {int phy_op; int phy_adr; int reg_adr; } ;
struct TYPE_8__ {scalar_t__ u64; TYPE_2__ s; } ;
typedef  TYPE_4__ cvmx_smi_cmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_SMI_CMD ; 
 int /*<<< orphan*/  CVMX_SMI_RD_DAT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC5(struct ifnet *ifp, int phy_id, int location)
{
	cvmx_smi_cmd_t          smi_cmd;
	cvmx_smi_rd_dat_t       smi_rd;

	FUNC0();
	smi_cmd.u64 = 0;
	smi_cmd.s.phy_op = 1;
	smi_cmd.s.phy_adr = phy_id;
	smi_cmd.s.reg_adr = location;
	FUNC4(CVMX_SMI_CMD, smi_cmd.u64);

	do {
		FUNC3(1000);
		smi_rd.u64 = FUNC2(CVMX_SMI_RD_DAT);
	} while (smi_rd.s.pending);

	FUNC1();

	if (smi_rd.s.val)
		return smi_rd.s.dat;
	else
		return 0;
}