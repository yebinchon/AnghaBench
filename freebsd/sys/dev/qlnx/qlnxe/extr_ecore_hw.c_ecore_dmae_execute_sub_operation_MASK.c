#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_2__ {void* p_intermediate_buffer; scalar_t__ intermediate_buffer_phys_addr; struct dmae_cmd* p_dmae_cmd; } ;
struct ecore_hwfn {TYPE_1__ dmae_info; int /*<<< orphan*/  p_dev; } ;
struct dmae_cmd {void* src_addr_lo; void* src_addr_hi; int /*<<< orphan*/  length_dw; void* dst_addr_lo; void* dst_addr_hi; } ;
typedef  scalar_t__ osal_uintptr_t ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long,int,unsigned long long) ; 
#define  ECORE_DMAE_ADDRESS_GRC 130 
#define  ECORE_DMAE_ADDRESS_HOST_PHYS 129 
#define  ECORE_DMAE_ADDRESS_HOST_VIRT 128 
 int ECORE_INVAL ; 
 int /*<<< orphan*/  ECORE_MSG_HW ; 
 int ECORE_SUCCESS ; 
 scalar_t__ FUNC3 (void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,int) ; 
 int FUNC8 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC9 (struct ecore_hwfn*,struct ecore_ptt*) ; 

__attribute__((used)) static enum _ecore_status_t FUNC10(struct ecore_hwfn *p_hwfn,
							     struct ecore_ptt *p_ptt,
							     u64 src_addr,
							     u64 dst_addr,
							     u8 src_type,
							     u8 dst_type,
							     u32 length_dw)
{
	dma_addr_t phys = p_hwfn->dmae_info.intermediate_buffer_phys_addr;
	struct dmae_cmd *cmd = p_hwfn->dmae_info.p_dmae_cmd;
	enum _ecore_status_t ecore_status = ECORE_SUCCESS;

	switch (src_type) {
	case ECORE_DMAE_ADDRESS_GRC:
	case ECORE_DMAE_ADDRESS_HOST_PHYS:
		cmd->src_addr_hi = FUNC5(FUNC0(src_addr));
		cmd->src_addr_lo = FUNC5(FUNC1(src_addr));
		break;
	/* for virtual source addresses we use the intermediate buffer. */
	case ECORE_DMAE_ADDRESS_HOST_VIRT:
		cmd->src_addr_hi = FUNC5(FUNC0(phys));
		cmd->src_addr_lo = FUNC5(FUNC1(phys));
		FUNC7(&(p_hwfn->dmae_info.p_intermediate_buffer[0]),
			    (void *)(osal_uintptr_t)src_addr,
			    length_dw * sizeof(u32));
		break;
	default:
		return ECORE_INVAL;
	}

	switch (dst_type) {
	case ECORE_DMAE_ADDRESS_GRC:
	case ECORE_DMAE_ADDRESS_HOST_PHYS:
		cmd->dst_addr_hi = FUNC5(FUNC0(dst_addr));
		cmd->dst_addr_lo = FUNC5(FUNC1(dst_addr));
		break;
	/* for virtual destination addresses we use the intermediate buffer. */
	case ECORE_DMAE_ADDRESS_HOST_VIRT:
		cmd->dst_addr_hi = FUNC5(FUNC0(phys));
		cmd->dst_addr_lo = FUNC5(FUNC1(phys));
		break;
	default:
		return ECORE_INVAL;
	}

	cmd->length_dw = FUNC4((u16)length_dw);
#ifndef __EXTRACT__LINUX__
	if (src_type == ECORE_DMAE_ADDRESS_HOST_VIRT ||
	    src_type == ECORE_DMAE_ADDRESS_HOST_PHYS)
		FUNC6(p_hwfn->p_dev,
			      (void *)FUNC3(cmd->src_addr_hi,
					       cmd->src_addr_lo),
			      length_dw * sizeof(u32), false);
#endif

	FUNC9(p_hwfn, p_ptt);

	ecore_status = FUNC8(p_hwfn);

#ifndef __EXTRACT__LINUX__
	/* TODO - is it true ? */
	if (src_type == ECORE_DMAE_ADDRESS_HOST_VIRT ||
	    src_type == ECORE_DMAE_ADDRESS_HOST_PHYS)
		FUNC6(p_hwfn->p_dev,
			      (void *)FUNC3(cmd->src_addr_hi,
					       cmd->src_addr_lo),
			      length_dw * sizeof(u32), true);
#endif

	if (ecore_status != ECORE_SUCCESS) {
		FUNC2(p_hwfn, ECORE_MSG_HW,
			  "Wait Failed. source_addr 0x%llx, grc_addr 0x%llx, size_in_dwords 0x%x, intermediate buffer 0x%llx.\n",
			  (unsigned long long)src_addr, (unsigned long long)dst_addr, length_dw,
			  (unsigned long long)p_hwfn->dmae_info.intermediate_buffer_phys_addr);
		return ecore_status;
	}

	if (dst_type == ECORE_DMAE_ADDRESS_HOST_VIRT)
		FUNC7((void *)(osal_uintptr_t)(dst_addr),
			    &p_hwfn->dmae_info.p_intermediate_buffer[0],
			    length_dw * sizeof(u32));

	return ECORE_SUCCESS;
}