#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_23__ {int /*<<< orphan*/  virt; } ;
struct TYPE_24__ {int /*<<< orphan*/  os; TYPE_3__ bmbx; int /*<<< orphan*/  if_type; int /*<<< orphan*/  port_type; } ;
typedef  TYPE_4__ sli4_t ;
struct TYPE_21__ {int /*<<< orphan*/  is_mq; } ;
struct TYPE_22__ {TYPE_1__ flag; } ;
struct TYPE_25__ {int /*<<< orphan*/  ulp; int /*<<< orphan*/  id; int /*<<< orphan*/  dma; TYPE_2__ u; } ;
typedef  TYPE_5__ sli4_queue_t ;
typedef  scalar_t__ (* sli4_create_q_fn_t ) (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  SLI4_BMBX_SIZE ; 
 int /*<<< orphan*/  SLI4_IF_TYPE_BE3_SKH_PF ; 
 int /*<<< orphan*/  SLI4_PORT_TYPE_FC ; 
 int SLI_PAGE_SIZE ; 
 int /*<<< orphan*/ * SLI_QNAME ; 
#define  SLI_QTYPE_CQ 131 
#define  SLI_QTYPE_EQ 130 
#define  SLI_QTYPE_MQ 129 
#define  SLI_QTYPE_WQ 128 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (TYPE_4__*,TYPE_5__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*,TYPE_5__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,TYPE_4__*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_4__*,int) ; 

int32_t
FUNC10(sli4_t *sli4, uint32_t qtype, sli4_queue_t *q, uint32_t n_entries,
		sli4_queue_t *assoc, uint16_t ulp)
{
	int32_t		size;
	uint32_t	align = 0;
	sli4_create_q_fn_t create = NULL;

	if (!sli4 || !q) {
		FUNC2(NULL, "bad parameter sli4=%p q=%p\n", sli4, q);
		return -1;
	}

	/* get queue size */
	size = FUNC9(sli4, qtype);
	if (size < 0)
		return -1;
	align = SLI_PAGE_SIZE;

	switch (qtype) {
	case SLI_QTYPE_EQ:
		create = sli_cmd_common_create_eq;
		break;
	case SLI_QTYPE_CQ:
		create = sli_cmd_common_create_cq;
		break;
	case SLI_QTYPE_MQ:
		/* Validate the number of entries */
		switch (n_entries) {
		case 16:
		case 32:
		case 64:
		case 128:
			break;
		default:
			FUNC3(sli4->os, "illegal n_entries value %d for MQ\n", n_entries);
			return -1;
		}
		assoc->u.flag.is_mq = TRUE;
		create = sli_cmd_common_create_mq_ext;
		break;
	case SLI_QTYPE_WQ:
		if (SLI4_PORT_TYPE_FC == sli4->port_type) {
			if (sli4->if_type == SLI4_IF_TYPE_BE3_SKH_PF) {
				create = sli_cmd_fcoe_wq_create;
			} else {
				create = sli_cmd_fcoe_wq_create_v1;
			}
		} else {
			/* TODO */
			FUNC3(sli4->os, "unsupported WQ create\n");
			return -1;
		}
		break;
	default:
		FUNC3(sli4->os, "unknown queue type %d\n", qtype);
		return -1;
	}


	if (FUNC1(sli4, q, qtype, size, n_entries, align)) {
		FUNC2(sli4->os, "%s allocation failed\n", SLI_QNAME[qtype]);
		return -1;
	}

	if (create(sli4, sli4->bmbx.virt, SLI4_BMBX_SIZE, &q->dma, assoc ? assoc->id : 0, ulp)) {

		if (FUNC0(sli4, q)) {
			FUNC2(sli4->os, "create %s failed\n", SLI_QNAME[qtype]);
			return -1;
		}
		q->ulp = ulp;
	} else {
		FUNC2(sli4->os, "cannot create %s\n", SLI_QNAME[qtype]);
		return -1;
	}

	return 0;
}