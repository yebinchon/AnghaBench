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
struct ecore_sb_sp_info {int /*<<< orphan*/  pi_info_arr; int /*<<< orphan*/  sb_info; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {struct ecore_sb_sp_info* p_sp_sb; int /*<<< orphan*/  p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int ECORE_NOMEM ; 
 int /*<<< orphan*/  ECORE_SP_SB_ID ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ecore_sb_sp_info* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ecore_sb_sp_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum _ecore_status_t FUNC7(struct ecore_hwfn *p_hwfn,
						  struct ecore_ptt *p_ptt)
{
	struct ecore_sb_sp_info *p_sb;
	dma_addr_t p_phys = 0;
	void *p_virt;

	/* SB struct */
	p_sb = FUNC1(p_hwfn->p_dev, GFP_KERNEL, sizeof(*p_sb));
	if (!p_sb) {
		FUNC0(p_hwfn, false, "Failed to allocate `struct ecore_sb_info'\n");
		return ECORE_NOMEM;
	}

	/* SB ring  */
	p_virt = FUNC2(p_hwfn->p_dev,
					 &p_phys,
					 FUNC5(p_hwfn));
	if (!p_virt) {
		FUNC0(p_hwfn, false, "Failed to allocate status block\n");
		FUNC3(p_hwfn->p_dev, p_sb);
		return ECORE_NOMEM;
	}


	/* Status Block setup */
	p_hwfn->p_sp_sb = p_sb;
	FUNC6(p_hwfn, p_ptt, &p_sb->sb_info,
			  p_virt, p_phys, ECORE_SP_SB_ID);

	FUNC4(p_sb->pi_info_arr, 0, sizeof(p_sb->pi_info_arr));

	return ECORE_SUCCESS;
}