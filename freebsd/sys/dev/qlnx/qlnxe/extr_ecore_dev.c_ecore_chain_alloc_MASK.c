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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ecore_dev {int /*<<< orphan*/  dp_ctx; } ;
struct ecore_chain_ext_pbl {int dummy; } ;
struct ecore_chain {int dummy; } ;
typedef  scalar_t__ osal_size_t ;
typedef  enum ecore_chain_use_mode { ____Placeholder_ecore_chain_use_mode } ecore_chain_use_mode ;
typedef  enum ecore_chain_mode { ____Placeholder_ecore_chain_mode } ecore_chain_mode ;
typedef  enum ecore_chain_cnt_type { ____Placeholder_ecore_chain_cnt_type } ecore_chain_cnt_type ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_dev*,int,char*,int,int,int,int,scalar_t__) ; 
#define  ECORE_CHAIN_MODE_NEXT_PTR 130 
#define  ECORE_CHAIN_MODE_PBL 129 
#define  ECORE_CHAIN_MODE_SINGLE 128 
 int FUNC1 (int,scalar_t__,int) ; 
 int ECORE_SUCCESS ; 
 int FUNC2 (struct ecore_dev*,struct ecore_chain*) ; 
 int FUNC3 (struct ecore_dev*,struct ecore_chain*,struct ecore_chain_ext_pbl*) ; 
 int FUNC4 (struct ecore_dev*,int,scalar_t__,int) ; 
 int FUNC5 (struct ecore_dev*,struct ecore_chain*) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_dev*,struct ecore_chain*) ; 
 int /*<<< orphan*/  FUNC7 (struct ecore_chain*,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 

enum _ecore_status_t FUNC8(struct ecore_dev *p_dev,
				       enum ecore_chain_use_mode intended_use,
				       enum ecore_chain_mode mode,
				       enum ecore_chain_cnt_type cnt_type,
				       u32 num_elems, osal_size_t elem_size,
				       struct ecore_chain *p_chain,
				       struct ecore_chain_ext_pbl *ext_pbl)
{
	u32 page_cnt;
	enum _ecore_status_t rc = ECORE_SUCCESS;

	if (mode == ECORE_CHAIN_MODE_SINGLE)
		page_cnt = 1;
	else
		page_cnt = FUNC1(num_elems, elem_size, mode);

	rc = FUNC4(p_dev, cnt_type, elem_size,
					    page_cnt);
	if (rc) {
		FUNC0(p_dev, false,
			  "Cannot allocate a chain with the given arguments:\n"
			  "[use_mode %d, mode %d, cnt_type %d, num_elems %d, elem_size %zu]\n",
			  intended_use, mode, cnt_type, num_elems, elem_size);
		return rc;
	}

	FUNC7(p_chain, page_cnt, (u8)elem_size, intended_use,
				mode, cnt_type, p_dev->dp_ctx);

	switch (mode) {
	case ECORE_CHAIN_MODE_NEXT_PTR:
		rc = FUNC2(p_dev, p_chain);
		break;
	case ECORE_CHAIN_MODE_SINGLE:
		rc = FUNC5(p_dev, p_chain);
		break;
	case ECORE_CHAIN_MODE_PBL:
		rc = FUNC3(p_dev, p_chain, ext_pbl);
		break;
	}
	if (rc)
		goto nomem;

	return ECORE_SUCCESS;

nomem:
	FUNC6(p_dev, p_chain);
	return rc;
}