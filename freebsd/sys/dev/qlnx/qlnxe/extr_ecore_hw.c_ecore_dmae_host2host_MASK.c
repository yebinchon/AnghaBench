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
typedef  int /*<<< orphan*/  u32 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct ecore_hwfn {TYPE_1__ dmae_info; } ;
struct ecore_dmae_params {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECORE_DMAE_ADDRESS_HOST_PHYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_dmae_params*) ; 

enum _ecore_status_t FUNC3(struct ecore_hwfn *p_hwfn,
					  struct ecore_ptt *p_ptt,
					  dma_addr_t source_addr,
					  dma_addr_t dest_addr,
					  u32 size_in_dwords,
					  struct ecore_dmae_params *p_params)
{
	enum _ecore_status_t rc;

	FUNC0(&p_hwfn->dmae_info.lock);

	rc = FUNC2(p_hwfn, p_ptt, source_addr,
					dest_addr,
					ECORE_DMAE_ADDRESS_HOST_PHYS,
					ECORE_DMAE_ADDRESS_HOST_PHYS,
					size_in_dwords,
					p_params);

	FUNC1(&p_hwfn->dmae_info.lock);

	return rc;
}