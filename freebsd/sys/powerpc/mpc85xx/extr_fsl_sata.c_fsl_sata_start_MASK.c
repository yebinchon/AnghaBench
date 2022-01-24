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
typedef  int u_int32_t ;
struct fsl_sata_channel {int /*<<< orphan*/  r_mem; scalar_t__ pm_present; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FSL_SATA_P_CER ; 
 int /*<<< orphan*/  FSL_SATA_P_DER ; 
 int /*<<< orphan*/  FSL_SATA_P_HCTRL ; 
 int FSL_SATA_P_HCTRL_HC_FORCE_OFF ; 
 int FSL_SATA_P_HCTRL_HC_ON ; 
 int FSL_SATA_P_HCTRL_PM ; 
 int FSL_SATA_P_HCTRL_SNOOP ; 
 int /*<<< orphan*/  FSL_SATA_P_HSTS ; 
 int FSL_SATA_P_HSTS_PR ; 
 int /*<<< orphan*/  FSL_SATA_P_SERR ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_sata_channel*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void
FUNC3(struct fsl_sata_channel *ch)
{
	u_int32_t cmd;

	/* Clear SATA error register */
	FUNC1(ch->r_mem, FSL_SATA_P_SERR, 0xFFFFFFFF);
	/* Clear any interrupts pending on this channel */
	FUNC1(ch->r_mem, FSL_SATA_P_HSTS, 0x3F);
	FUNC1(ch->r_mem, FSL_SATA_P_CER, 0xFFFF);
	FUNC1(ch->r_mem, FSL_SATA_P_DER, 0xFFFF);
	/* Start operations on this channel */
	cmd = FUNC0(ch->r_mem, FSL_SATA_P_HCTRL);
	cmd |= FSL_SATA_P_HCTRL_HC_ON | FSL_SATA_P_HCTRL_SNOOP;
	cmd &= ~FSL_SATA_P_HCTRL_HC_FORCE_OFF;
	FUNC1(ch->r_mem, FSL_SATA_P_HCTRL, cmd | 
	    (ch->pm_present ? FSL_SATA_P_HCTRL_PM : 0));
	FUNC2(ch, FSL_SATA_P_HSTS,
	    FSL_SATA_P_HSTS_PR, FSL_SATA_P_HSTS_PR, 500);
	FUNC1(ch->r_mem, FSL_SATA_P_HSTS,
	    FUNC0(ch->r_mem, FSL_SATA_P_HSTS) & FSL_SATA_P_HSTS_PR);
}