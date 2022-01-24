#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vpd ;
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct vpd_params {int* port_type; int* eth_base; void** xauicfg; int /*<<< orphan*/  ec; int /*<<< orphan*/  sn; void* mem_timing; void* mdc; void* uclk; void* mclk; void* cclk; } ;
struct t3_vpd {int id_tag; int /*<<< orphan*/ * na_data; int /*<<< orphan*/  xaui1cfg_data; int /*<<< orphan*/  xaui0cfg_data; int /*<<< orphan*/ * port3_data; int /*<<< orphan*/ * port2_data; int /*<<< orphan*/ * port1_data; int /*<<< orphan*/ * port0_data; int /*<<< orphan*/  ec_data; int /*<<< orphan*/  sn_data; int /*<<< orphan*/  mt_data; int /*<<< orphan*/  mdc_data; int /*<<< orphan*/  uclk_data; int /*<<< orphan*/  mclk_data; int /*<<< orphan*/  cclk_data; } ;
struct TYPE_6__ {scalar_t__ rev; } ;
struct TYPE_7__ {TYPE_1__ params; } ;
typedef  TYPE_2__ adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECNUM_LEN ; 
 int /*<<< orphan*/  SERNUM_LEN ; 
 int VPD_BASE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(adapter_t *adapter, struct vpd_params *p)
{
	int i, addr, ret;
	struct t3_vpd vpd;

	/*
	 * Card information is normally at VPD_BASE but some early cards had
	 * it at 0.
	 */
	ret = FUNC3(adapter, VPD_BASE, (u32 *)&vpd);
	if (ret)
		return ret;
	addr = vpd.id_tag == 0x82 ? VPD_BASE : 0;

	for (i = 0; i < sizeof(vpd); i += 4) {
		ret = FUNC3(adapter, addr + i,
				      (u32 *)((u8 *)&vpd + i));
		if (ret)
			return ret;
	}

	p->cclk = FUNC2(vpd.cclk_data, NULL, 10);
	p->mclk = FUNC2(vpd.mclk_data, NULL, 10);
	p->uclk = FUNC2(vpd.uclk_data, NULL, 10);
	p->mdc = FUNC2(vpd.mdc_data, NULL, 10);
	p->mem_timing = FUNC2(vpd.mt_data, NULL, 10);
	FUNC1(p->sn, vpd.sn_data, SERNUM_LEN);
	FUNC1(p->ec, vpd.ec_data, ECNUM_LEN);

	/* Old eeproms didn't have port information */
	if (adapter->params.rev == 0 && !vpd.port0_data[0]) {
		p->port_type[0] = FUNC4(adapter) ? 1 : 2;
		p->port_type[1] = FUNC4(adapter) ? 6 : 2;
	} else {
		p->port_type[0] = (u8)FUNC0(vpd.port0_data[0]);
		p->port_type[1] = (u8)FUNC0(vpd.port1_data[0]);
		p->port_type[2] = (u8)FUNC0(vpd.port2_data[0]);
		p->port_type[3] = (u8)FUNC0(vpd.port3_data[0]);
		p->xauicfg[0] = FUNC2(vpd.xaui0cfg_data, NULL, 16);
		p->xauicfg[1] = FUNC2(vpd.xaui1cfg_data, NULL, 16);
	}

	for (i = 0; i < 6; i++)
		p->eth_base[i] = FUNC0(vpd.na_data[2 * i]) * 16 +
				 FUNC0(vpd.na_data[2 * i + 1]);
	return 0;
}