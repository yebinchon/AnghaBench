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
typedef  int /*<<< orphan*/  vm_paddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  APM86XXX_AHB_PA ; 
 scalar_t__ APM86XXX_AHB_VA ; 
 int /*<<< orphan*/  APM86XXX_CSR_PA ; 
 scalar_t__ APM86XXX_CSR_VA ; 
 int /*<<< orphan*/  APM86XXX_DEEP_SLEEP_PA ; 
 scalar_t__ APM86XXX_DEEP_SLEEP_VA ; 
 int /*<<< orphan*/  APM86XXX_MBOX_PA ; 
 scalar_t__ APM86XXX_MBOX_VA ; 
 int /*<<< orphan*/  APM86XXX_PRIMARY_FABRIC_PA ; 
 scalar_t__ APM86XXX_PRIMARY_FABRIC_VA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int TLB_G ; 
 int TLB_I ; 
 int TLB_SIZE_16M ; 
 int TLB_SIZE_4K ; 
 int TLB_SR ; 
 int TLB_SW ; 
 int TLB_SX ; 
 int TLB_UR ; 
 int TLB_UW ; 
 int TLB_UX ; 
 int TLB_VALID ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int) ; 

void
FUNC3(vm_paddr_t fdt_immr_pa)
{

	/* Map register space */
	FUNC2(APM86XXX_DEEP_SLEEP_VA,
	    FUNC1(APM86XXX_DEEP_SLEEP_PA),
	    FUNC0(APM86XXX_DEEP_SLEEP_PA), TLB_VALID | TLB_SIZE_16M,
	    TLB_SW | TLB_SR | TLB_I | TLB_G);

	FUNC2(APM86XXX_CSR_VA, FUNC1(APM86XXX_CSR_PA),
	    FUNC0(APM86XXX_CSR_PA), TLB_VALID | TLB_SIZE_16M,
	    TLB_SW | TLB_SR | TLB_I | TLB_G);

	FUNC2(APM86XXX_PRIMARY_FABRIC_VA,
	    FUNC1(APM86XXX_PRIMARY_FABRIC_PA),
	    FUNC0(APM86XXX_PRIMARY_FABRIC_PA),
	    TLB_VALID | TLB_SIZE_16M,
	    TLB_SW | TLB_SR | TLB_I | TLB_G);

	FUNC2(APM86XXX_AHB_VA, FUNC1(APM86XXX_AHB_PA),
	    FUNC0(APM86XXX_AHB_PA),
	    TLB_VALID | TLB_SIZE_16M,
	    TLB_SW | TLB_SR | TLB_I | TLB_G);

	/* Map MailBox space */
	FUNC2(APM86XXX_MBOX_VA, FUNC1(APM86XXX_MBOX_PA),
	    FUNC0(APM86XXX_MBOX_PA),
	    TLB_VALID | TLB_SIZE_4K,
	    TLB_UX | TLB_UW | TLB_UR |
	    TLB_SX | TLB_SW | TLB_SR |
	    TLB_I | TLB_G);

	FUNC2(APM86XXX_MBOX_VA + 0x1000,
	    FUNC1(APM86XXX_MBOX_PA) + 0x1000,
	    FUNC0(APM86XXX_MBOX_PA),
	    TLB_VALID | TLB_SIZE_4K,
	    TLB_UX | TLB_UW | TLB_UR |
	    TLB_SX | TLB_SW | TLB_SR |
	    TLB_I | TLB_G);

	FUNC2(APM86XXX_MBOX_VA + 0x2000,
	    FUNC1(APM86XXX_MBOX_PA)+ 0x2000,
	    FUNC0(APM86XXX_MBOX_PA),
	    TLB_VALID | TLB_SIZE_4K,
	    TLB_UX | TLB_UW | TLB_UR |
	    TLB_SX | TLB_SW | TLB_SR |
	    TLB_I | TLB_G);
}