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
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {struct ecore_dev* p_dev; } ;
struct ecore_dev {int num_ports_in_engine; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ecore_dev*) ; 
 scalar_t__ CNIG_REG_NIG_PORT0_CONF_K2_E5 ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int,char*,...) ; 
 int MAX_NUM_PORTS_K2 ; 
 scalar_t__ MISCS_REG_ECO_RESERVED ; 
 int FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ecore_hwfn *p_hwfn,
					 struct ecore_ptt *p_ptt)
{
	struct ecore_dev *p_dev = p_hwfn->p_dev;
	u32 port;
	int i;

	p_dev->num_ports_in_engine = 0;

#ifndef ASIC_ONLY
	if (FUNC0(p_dev)) {
		port = FUNC2(p_hwfn, p_ptt, MISCS_REG_ECO_RESERVED);
		switch ((port & 0xf000) >> 12) {
		case 1:
			p_dev->num_ports_in_engine = 1;
			break;
		case 3:
			p_dev->num_ports_in_engine = 2;
			break;
		case 0xf:
			p_dev->num_ports_in_engine = 4;
			break;
		default:
			FUNC1(p_hwfn, false,
				  "Unknown port mode in ECO_RESERVED %08x\n",
				  port);
		}
	} else
#endif
	for (i = 0; i < MAX_NUM_PORTS_K2; i++) {
		port = FUNC2(p_hwfn, p_ptt,
				CNIG_REG_NIG_PORT0_CONF_K2_E5 + (i * 4));
		if (port & 1)
			p_dev->num_ports_in_engine++;
	}

	if (!p_dev->num_ports_in_engine) {
		FUNC1(p_hwfn, true, "All NIG ports are inactive\n");

		/* Default num_ports_in_engine to something */
		p_dev->num_ports_in_engine = 1;
	}
}