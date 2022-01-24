#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_27__ {scalar_t__ fc_id; } ;
struct TYPE_28__ {int /*<<< orphan*/  fcp_enabled; TYPE_3__ rnode; } ;
typedef  TYPE_4__ ocs_node_t ;
struct TYPE_29__ {TYPE_2__* header; } ;
typedef  TYPE_5__ ocs_hw_sequence_t ;
typedef  int int32_t ;
struct TYPE_30__ {int r_ctl; int /*<<< orphan*/  info; int /*<<< orphan*/  type; int /*<<< orphan*/  f_ctl; int /*<<< orphan*/  s_id; } ;
typedef  TYPE_6__ fc_header_t ;
struct TYPE_25__ {TYPE_6__* virt; } ;
struct TYPE_26__ {TYPE_1__ dma; } ;

/* Variables and functions */
 int FC_FCTL_END_SEQUENCE ; 
 int FC_FCTL_SEQUENCE_INITIATIVE ; 
#define  FC_RCTL_BLS 132 
#define  FC_RCTL_ELS 131 
#define  FC_RCTL_FC4_DATA 130 
 int /*<<< orphan*/  FC_RCTL_INFO_SOL_DATA ; 
 int /*<<< orphan*/  FC_RCTL_INFO_UNSOL_CMD ; 
#define  FC_TYPE_FCP 129 
#define  FC_TYPE_GS 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (TYPE_4__*,TYPE_5__*) ; 
 int FUNC4 (TYPE_4__*,TYPE_5__*) ; 
 int FUNC5 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (TYPE_4__*,TYPE_5__*) ; 
 int FUNC8 (TYPE_4__*,TYPE_5__*) ; 
 int FUNC9 (TYPE_4__*,TYPE_5__*) ; 
 int FUNC10 (TYPE_4__*,TYPE_5__*) ; 
 int FUNC11 (TYPE_4__*,TYPE_5__*) ; 

__attribute__((used)) static int32_t
FUNC12(void *arg, ocs_hw_sequence_t *seq)
{

	fc_header_t *hdr = seq->header->dma.virt;
	uint32_t port_id;
	ocs_node_t *node = (ocs_node_t *)arg;
	int32_t rc = -1;
	int32_t sit_set = 0;

	port_id = FUNC0(hdr->s_id);
	FUNC2(port_id == node->rnode.fc_id, -1);

	if (FUNC0(hdr->f_ctl) & FC_FCTL_END_SEQUENCE) {
		/*if SIT is set */
		if (FUNC0(hdr->f_ctl) & FC_FCTL_SEQUENCE_INITIATIVE) {
			sit_set = 1;
		}
		switch (hdr->r_ctl) {
		case FC_RCTL_ELS:
			if (sit_set) {
				rc = FUNC10(node, seq);
			}
			break;

		case FC_RCTL_BLS:
			if (sit_set) {
				rc = FUNC7(node, seq);
			}else {
				rc = FUNC8(node, seq);
			}
			break;

		case FC_RCTL_FC4_DATA:
			switch(hdr->type) {
			case FC_TYPE_FCP:
				if (hdr->info == FC_RCTL_INFO_UNSOL_CMD) {
					if (node->fcp_enabled) {
						if (sit_set) {
							rc = FUNC3(node, seq);
						}else {
							/* send the auto xfer ready command */
							rc = FUNC4(node, seq);
						}
					} else {
						rc = FUNC11(node, seq);
					}
				} else if (hdr->info == FC_RCTL_INFO_SOL_DATA) {
					if (sit_set) {
						rc = FUNC5(node, seq);
					}
				}
				break;
			case FC_TYPE_GS:
				if (sit_set) {
					rc = FUNC9(node, seq);
				}
				break;
			default:
				break;
			}
			break;
		}
	} else {
		FUNC1(node, "Dropping frame hdr = %08x %08x %08x %08x %08x %08x\n",
			    FUNC6(((uint32_t *)hdr)[0]),
			    FUNC6(((uint32_t *)hdr)[1]),
			    FUNC6(((uint32_t *)hdr)[2]),
			    FUNC6(((uint32_t *)hdr)[3]),
			    FUNC6(((uint32_t *)hdr)[4]),
			    FUNC6(((uint32_t *)hdr)[5]));
	}
	return rc;
}