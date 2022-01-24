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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct nae_port_config {int ieee1588_userval; int ieee1588_ptpoff; int ieee1588_tmr1; int ieee1588_tmr2; int ieee1588_tmr3; int ieee1588_inc_intg; int ieee1588_inc_num; int ieee1588_inc_den; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAE_1588_PTP_CONTROL ; 
 int /*<<< orphan*/  NAE_1588_PTP_INC_DEN ; 
 int /*<<< orphan*/  NAE_1588_PTP_INC_INTG ; 
 int /*<<< orphan*/  NAE_1588_PTP_INC_NUM ; 
 int /*<<< orphan*/  NAE_1588_PTP_OFFSET_HI ; 
 int /*<<< orphan*/  NAE_1588_PTP_OFFSET_LO ; 
 int /*<<< orphan*/  NAE_1588_PTP_TMR1_HI ; 
 int /*<<< orphan*/  NAE_1588_PTP_TMR1_LO ; 
 int /*<<< orphan*/  NAE_1588_PTP_TMR2_HI ; 
 int /*<<< orphan*/  NAE_1588_PTP_TMR2_LO ; 
 int /*<<< orphan*/  NAE_1588_PTP_TMR3_HI ; 
 int /*<<< orphan*/  NAE_1588_PTP_TMR3_LO ; 
 int /*<<< orphan*/  NAE_1588_PTP_USER_VALUE_HI ; 
 int /*<<< orphan*/  NAE_1588_PTP_USER_VALUE_LO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC2(uint64_t nae_base, struct nae_port_config *cfg)
{
	uint32_t hi, lo, val;

	hi = cfg[0].ieee1588_userval >> 32;
	lo = cfg[0].ieee1588_userval & 0xffffffff;
	FUNC1(nae_base, NAE_1588_PTP_USER_VALUE_HI, hi);
	FUNC1(nae_base, NAE_1588_PTP_USER_VALUE_LO, lo);

	hi = cfg[0].ieee1588_ptpoff >> 32;
	lo = cfg[0].ieee1588_ptpoff & 0xffffffff;
	FUNC1(nae_base, NAE_1588_PTP_OFFSET_HI, hi);
	FUNC1(nae_base, NAE_1588_PTP_OFFSET_LO, lo);

	hi = cfg[0].ieee1588_tmr1 >> 32;
	lo = cfg[0].ieee1588_tmr1 & 0xffffffff;
	FUNC1(nae_base, NAE_1588_PTP_TMR1_HI, hi);
	FUNC1(nae_base, NAE_1588_PTP_TMR1_LO, lo);

	hi = cfg[0].ieee1588_tmr2 >> 32;
	lo = cfg[0].ieee1588_tmr2 & 0xffffffff;
	FUNC1(nae_base, NAE_1588_PTP_TMR2_HI, hi);
	FUNC1(nae_base, NAE_1588_PTP_TMR2_LO, lo);

	hi = cfg[0].ieee1588_tmr3 >> 32;
	lo = cfg[0].ieee1588_tmr3 & 0xffffffff;
	FUNC1(nae_base, NAE_1588_PTP_TMR3_HI, hi);
	FUNC1(nae_base, NAE_1588_PTP_TMR3_LO, lo);

	FUNC1(nae_base, NAE_1588_PTP_INC_INTG,
	    cfg[0].ieee1588_inc_intg);
	FUNC1(nae_base, NAE_1588_PTP_INC_NUM,
	    cfg[0].ieee1588_inc_num);
	FUNC1(nae_base, NAE_1588_PTP_INC_DEN,
	    cfg[0].ieee1588_inc_den);

	val = FUNC0(nae_base, NAE_1588_PTP_CONTROL);
	/* set and clear freq_mul = 1 */
	FUNC1(nae_base, NAE_1588_PTP_CONTROL, val | (0x1 << 1));
	FUNC1(nae_base, NAE_1588_PTP_CONTROL, val);
	/* set and clear load_user_val = 1 */
	FUNC1(nae_base, NAE_1588_PTP_CONTROL, val | (0x1 << 6));
	FUNC1(nae_base, NAE_1588_PTP_CONTROL, val);
}