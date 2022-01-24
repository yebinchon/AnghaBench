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
struct ecore_sb_attn_info {int dummy; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {struct ecore_sb_attn_info* p_sb_attn; struct ecore_dev* p_dev; } ;
struct ecore_dev {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_dev*,int,char*) ; 
 int ECORE_NOMEM ; 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ecore_sb_attn_info* FUNC1 (struct ecore_dev*,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (struct ecore_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_dev*,struct ecore_sb_attn_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,struct ecore_ptt*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum _ecore_status_t FUNC6(struct ecore_hwfn *p_hwfn,
						    struct ecore_ptt *p_ptt)
{
	struct ecore_dev *p_dev = p_hwfn->p_dev;
	struct ecore_sb_attn_info *p_sb;
	dma_addr_t p_phys = 0;
	void *p_virt;

	/* SB struct */
	p_sb = FUNC1(p_dev, GFP_KERNEL, sizeof(*p_sb));
	if (!p_sb) {
		FUNC0(p_dev, false, "Failed to allocate `struct ecore_sb_attn_info'\n");
		return ECORE_NOMEM;
	}

	/* SB ring  */
	p_virt = FUNC2(p_dev, &p_phys,
					 FUNC4(p_hwfn));
	if (!p_virt) {
		FUNC0(p_dev, false, "Failed to allocate status block (attentions)\n");
		FUNC3(p_dev, p_sb);
		return ECORE_NOMEM;
	}

	/* Attention setup */
	p_hwfn->p_sb_attn = p_sb;
	FUNC5(p_hwfn, p_ptt, p_virt, p_phys);

	return ECORE_SUCCESS;
}