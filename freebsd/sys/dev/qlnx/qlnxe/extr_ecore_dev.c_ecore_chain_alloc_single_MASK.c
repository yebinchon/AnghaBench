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
struct ecore_dev {int dummy; } ;
struct ecore_chain {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_dev*,int,char*) ; 
 int /*<<< orphan*/  ECORE_CHAIN_PAGE_SIZE ; 
 int ECORE_NOMEM ; 
 int ECORE_SUCCESS ; 
 void* FUNC1 (struct ecore_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* OSAL_NULL ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_chain*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_chain*) ; 

__attribute__((used)) static enum _ecore_status_t
FUNC4(struct ecore_dev *p_dev, struct ecore_chain *p_chain)
{
	dma_addr_t p_phys = 0;
	void *p_virt = OSAL_NULL;

	p_virt = FUNC1(p_dev, &p_phys, ECORE_CHAIN_PAGE_SIZE);
	if (!p_virt) {
		FUNC0(p_dev, false, "Failed to allocate chain memory\n");
		return ECORE_NOMEM;
	}

	FUNC2(p_chain, p_virt, p_phys);
	FUNC3(p_chain);

	return ECORE_SUCCESS;
}