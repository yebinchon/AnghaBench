#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct ooo_opaque {int dummy; } ;
struct ecore_ooo_isle {int dummy; } ;
struct TYPE_8__ {int num_of_cqes; void* p_cqes; } ;
struct ecore_ooo_info {int cid_base; int max_num_archipelagos; struct ecore_ooo_info* p_isles_mem; struct ecore_ooo_info* p_archipelagos_mem; TYPE_4__ ooo_history; int /*<<< orphan*/  isles_list; int /*<<< orphan*/  free_isles_list; int /*<<< orphan*/  list_entry; int /*<<< orphan*/  buffers_list; int /*<<< orphan*/  ready_buffers_list; int /*<<< orphan*/  free_buffers_list; } ;
struct ecore_ooo_archipelago {int dummy; } ;
struct TYPE_6__ {int num_cons; } ;
struct TYPE_7__ {TYPE_2__ iscsi_pf_params; } ;
struct TYPE_5__ {int personality; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; struct ecore_ooo_info* p_ooo_info; TYPE_3__ pf_params; TYPE_1__ hw_info; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int ECORE_INVAL ; 
 int ECORE_MAX_NUM_ISLES ; 
 int ECORE_MAX_NUM_OOO_HISTORY_ENTRIES ; 
 int ECORE_NOMEM ; 
#define  ECORE_PCI_ETH_IWARP 130 
#define  ECORE_PCI_ETH_RDMA 129 
#define  ECORE_PCI_ISCSI 128 
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ecore_ooo_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OSAL_NULL ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PROTOCOLID_ISCSI ; 
 int /*<<< orphan*/  PROTOCOLID_IWARP ; 
 int /*<<< orphan*/  FUNC5 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 

enum _ecore_status_t FUNC7(struct ecore_hwfn *p_hwfn)
{
	u16 max_num_archipelagos = 0, cid_base;
	struct ecore_ooo_info *p_ooo_info;
	u16 max_num_isles = 0;
	u32 i;

	switch (p_hwfn->hw_info.personality) {
	case ECORE_PCI_ISCSI:
		max_num_archipelagos =
			p_hwfn->pf_params.iscsi_pf_params.num_cons;
		cid_base =(u16)FUNC6(p_hwfn,
							     PROTOCOLID_ISCSI);
		break;
	case ECORE_PCI_ETH_RDMA:
	case ECORE_PCI_ETH_IWARP:
		max_num_archipelagos =
			(u16)FUNC5(p_hwfn,
							   PROTOCOLID_IWARP,
							   OSAL_NULL);
		cid_base = (u16)FUNC6(p_hwfn,
							      PROTOCOLID_IWARP);
		break;
	default:
		FUNC0(p_hwfn, true,
			  "Failed to allocate ecore_ooo_info: unknown personalization\n");
		return ECORE_INVAL;
	}

	max_num_isles = ECORE_MAX_NUM_ISLES + max_num_archipelagos;

	if (!max_num_archipelagos) {
		FUNC0(p_hwfn, true,
			  "Failed to allocate ecore_ooo_info: unknown amount of connections\n");
		return ECORE_INVAL;
	}

	p_ooo_info = FUNC4(p_hwfn->p_dev, GFP_KERNEL,
				 sizeof(*p_ooo_info));
	if (!p_ooo_info) {
		FUNC0(p_hwfn, true, "Failed to allocate ecore_ooo_info\n");
		return ECORE_NOMEM;
	}
	p_ooo_info->cid_base = cid_base; /* We look only at the icid */
	p_ooo_info->max_num_archipelagos = max_num_archipelagos;

	FUNC2(&p_ooo_info->free_buffers_list);
	FUNC2(&p_ooo_info->ready_buffers_list);
	FUNC2(&p_ooo_info->free_isles_list);

	p_ooo_info->p_isles_mem =
		FUNC4(p_hwfn->p_dev, GFP_KERNEL,
			    sizeof(struct ecore_ooo_isle) *
			    max_num_isles);
	if (!p_ooo_info->p_isles_mem) {
		FUNC0(p_hwfn,true,
			  "Failed to allocate ecore_ooo_info (isles)\n");
		goto no_isles_mem;
	}

	for (i = 0; i < max_num_isles; i++) {
		FUNC2(&p_ooo_info->p_isles_mem[i].buffers_list);
		FUNC3(&p_ooo_info->p_isles_mem[i].list_entry,
				    &p_ooo_info->free_isles_list);
	}

	p_ooo_info->p_archipelagos_mem =
		FUNC4(p_hwfn->p_dev, GFP_KERNEL,
			    sizeof(struct ecore_ooo_archipelago) *
			    max_num_archipelagos);
	if (!p_ooo_info->p_archipelagos_mem) {
		FUNC0(p_hwfn,true,
			 "Failed to allocate ecore_ooo_info(archpelagos)\n");
		goto no_archipelagos_mem;
	}

	for (i = 0; i < max_num_archipelagos; i++) {
		FUNC2(&p_ooo_info->p_archipelagos_mem[i].isles_list);
	}

	p_ooo_info->ooo_history.p_cqes =
		FUNC4(p_hwfn->p_dev, GFP_KERNEL,
			    sizeof(struct ooo_opaque) *
			    ECORE_MAX_NUM_OOO_HISTORY_ENTRIES);
	if (!p_ooo_info->ooo_history.p_cqes) {
		FUNC0(p_hwfn,true,
			  "Failed to allocate ecore_ooo_info(history)\n");
		goto no_history_mem;
	}
	p_ooo_info->ooo_history.num_of_cqes =
		ECORE_MAX_NUM_OOO_HISTORY_ENTRIES;

	p_hwfn->p_ooo_info = p_ooo_info;
	return ECORE_SUCCESS;

no_history_mem:
	FUNC1(p_hwfn->p_dev, p_ooo_info->p_archipelagos_mem);
no_archipelagos_mem:
	FUNC1(p_hwfn->p_dev, p_ooo_info->p_isles_mem);
no_isles_mem:
	FUNC1(p_hwfn->p_dev, p_ooo_info);
	return ECORE_NOMEM;
}