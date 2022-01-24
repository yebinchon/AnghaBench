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
typedef  int u16 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_CCTRL_TABLE ; 
 unsigned int NCCTRL_WIN ; 
 unsigned int NMTUS ; 
 unsigned int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC3(struct adapter *adap, u16 incr[NMTUS][NCCTRL_WIN])
{
	unsigned int mtu, w;

	for (mtu = 0; mtu < NMTUS; ++mtu)
		for (w = 0; w < NCCTRL_WIN; ++w) {
			FUNC2(adap, A_TP_CCTRL_TABLE,
				     FUNC0(0xffff) | (mtu << 5) | w);
			incr[mtu][w] = (u16)FUNC1(adap,
						A_TP_CCTRL_TABLE) & 0x1fff;
		}
}