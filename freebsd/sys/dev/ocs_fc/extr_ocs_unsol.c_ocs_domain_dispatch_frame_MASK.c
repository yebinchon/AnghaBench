#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  ocs_t ;
struct TYPE_25__ {scalar_t__ fc_id; } ;
typedef  TYPE_4__ ocs_sport_t ;
struct TYPE_26__ {int /*<<< orphan*/  pend_frames_lock; int /*<<< orphan*/  pend_frames; scalar_t__ hold_frames; } ;
typedef  TYPE_5__ ocs_node_t ;
struct TYPE_27__ {TYPE_8__* header; TYPE_2__* payload; } ;
typedef  TYPE_6__ ocs_hw_sequence_t ;
struct TYPE_28__ {TYPE_4__* sport; int /*<<< orphan*/ * ocs; } ;
typedef  TYPE_7__ ocs_domain_t ;
typedef  int int32_t ;
struct TYPE_24__ {TYPE_8__* virt; } ;
struct TYPE_29__ {scalar_t__ type; scalar_t__ r_ctl; scalar_t__ info; int /*<<< orphan*/  d_id; int /*<<< orphan*/  s_id; TYPE_3__ dma; } ;
typedef  TYPE_8__ fc_header_t ;
struct TYPE_22__ {TYPE_8__* virt; } ;
struct TYPE_23__ {TYPE_1__ dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FC_RCTL_FC4_DATA ; 
 scalar_t__ FC_RCTL_INFO_SOL_CTRL ; 
 scalar_t__ FC_RCTL_INFO_SOL_DATA ; 
 scalar_t__ FC_TYPE_FCP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_8__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 TYPE_5__* FUNC9 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_5__*,TYPE_6__*) ; 
 TYPE_5__* FUNC11 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC13 (TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline int32_t
FUNC15(void *arg, ocs_hw_sequence_t *seq)
{
	ocs_domain_t *domain = (ocs_domain_t *)arg;
	ocs_t *ocs = domain->ocs;
	fc_header_t *hdr;
	uint32_t s_id;
	uint32_t d_id;
	ocs_node_t *node = NULL;
	ocs_sport_t *sport = NULL;

	FUNC2(seq->header, -1);
	FUNC2(seq->header->dma.virt, -1);
	FUNC2(seq->payload->dma.virt, -1);

	hdr = seq->header->dma.virt;

	/* extract the s_id and d_id */
	s_id = FUNC0(hdr->s_id);
	d_id = FUNC0(hdr->d_id);

	sport = domain->sport;
	if (sport == NULL) {
		FUNC1(ocs, hdr, "phy sport for FC ID 0x%06x is NULL, dropping frame\n", d_id);
		return -1;
	}

	if (sport->fc_id != d_id) {
		/* Not a physical port IO lookup sport associated with the npiv port */
		sport = FUNC13(domain, d_id); /* Look up without lock */
		if (sport == NULL) {
			if (hdr->type == FC_TYPE_FCP) {
				/* Drop frame */
				FUNC8(ocs, "unsolicited FCP frame with invalid d_id x%x, dropping\n",
					     d_id);
				return -1;
			} else {
				/* p2p will use this case */
				sport = domain->sport;
			}
		}
	}

	/* Lookup the node given the remote s_id */
	node = FUNC11(sport, s_id);

	/* If not found, then create a new node */
	if (node == NULL) {
		/* If this is solicited data or control based on R_CTL and there is no node context,
		 * then we can drop the frame
		 */
		if ((hdr->r_ctl == FC_RCTL_FC4_DATA) && (
		    (hdr->info == FC_RCTL_INFO_SOL_DATA) || (hdr->info == FC_RCTL_INFO_SOL_CTRL))) {
			FUNC6(ocs, "solicited data/ctrl frame without node, dropping\n");
			return -1;
		}
		node = FUNC9(sport, s_id, FALSE, FALSE);
		if (node == NULL) {
			FUNC7(ocs, "ocs_node_alloc() failed\n");
			return -1;
		}
		/* don't send PLOGI on ocs_d_init entry */
		FUNC12(node, FALSE);
	}

	if (node->hold_frames || !FUNC4((&node->pend_frames))) {
		/* TODO: info log level
		frame_printf(ocs, hdr, "Holding frame\n");
		*/
		/* add frame to node's pending list */
		FUNC5(&node->pend_frames_lock);
			FUNC3(&node->pend_frames, seq);
		FUNC14(&node->pend_frames_lock);

		return 0;
	}

	/* now dispatch frame to the node frame handler */
	return FUNC10(node, seq);
}