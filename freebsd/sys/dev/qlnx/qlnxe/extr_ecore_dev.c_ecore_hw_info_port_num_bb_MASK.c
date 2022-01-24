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
 scalar_t__ FUNC1 (struct ecore_dev*) ; 
 int /*<<< orphan*/  CNIG_REG_NW_PORT_MODE_BB ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int,char*,int) ; 
 scalar_t__ FUNC3 (struct ecore_dev*) ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ecore_hwfn *p_hwfn,
				      struct ecore_ptt *p_ptt)
{
	struct ecore_dev *p_dev = p_hwfn->p_dev;
	u32 port_mode;

#ifndef ASIC_ONLY
	/* Read the port mode */
	if (FUNC1(p_dev))
		port_mode = 4;
	else if (FUNC0(p_dev) && FUNC3(p_dev))
		/* In CMT on emulation, assume 1 port */
		port_mode = 1;
	else
#endif
	port_mode = FUNC4(p_hwfn, p_ptt, CNIG_REG_NW_PORT_MODE_BB);

	if (port_mode < 3) {
		p_dev->num_ports_in_engine = 1;
	} else if (port_mode <= 5) {
		p_dev->num_ports_in_engine = 2;
	} else {
		FUNC2(p_hwfn, true, "PORT MODE: %d not supported\n",
			  p_dev->num_ports_in_engine);

		/* Default num_ports_in_engine to something */
		p_dev->num_ports_in_engine = 1;
	}
}