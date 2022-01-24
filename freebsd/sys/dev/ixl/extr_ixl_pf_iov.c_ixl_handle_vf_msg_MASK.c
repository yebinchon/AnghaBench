#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  size_t uint16_t ;
struct ixl_vf {int vf_flags; } ;
struct TYPE_4__ {size_t vf_base_id; } ;
struct TYPE_5__ {TYPE_1__ func_caps; } ;
struct ixl_pf {size_t num_vfs; struct ixl_vf* vfs; int /*<<< orphan*/  dev; TYPE_2__ hw; } ;
struct TYPE_6__ {int /*<<< orphan*/  cookie_high; int /*<<< orphan*/  retval; } ;
struct i40e_arq_event_info {size_t msg_len; void* msg_buf; TYPE_3__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_ERR_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  FUNC0 (struct ixl_pf*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,char*,size_t,size_t) ; 
 int VF_FLAG_ENABLED ; 
#define  VIRTCHNL_OP_ADD_ETH_ADDR 145 
#define  VIRTCHNL_OP_ADD_VLAN 144 
#define  VIRTCHNL_OP_CONFIG_IRQ_MAP 143 
#define  VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE 142 
#define  VIRTCHNL_OP_CONFIG_RSS_KEY 141 
#define  VIRTCHNL_OP_CONFIG_RSS_LUT 140 
#define  VIRTCHNL_OP_CONFIG_RX_QUEUE 139 
#define  VIRTCHNL_OP_CONFIG_TX_QUEUE 138 
#define  VIRTCHNL_OP_CONFIG_VSI_QUEUES 137 
#define  VIRTCHNL_OP_DEL_ETH_ADDR 136 
#define  VIRTCHNL_OP_DEL_VLAN 135 
#define  VIRTCHNL_OP_DISABLE_QUEUES 134 
#define  VIRTCHNL_OP_ENABLE_QUEUES 133 
#define  VIRTCHNL_OP_GET_STATS 132 
#define  VIRTCHNL_OP_GET_VF_RESOURCES 131 
#define  VIRTCHNL_OP_RESET_VF 130 
#define  VIRTCHNL_OP_SET_RSS_HENA 129 
#define  VIRTCHNL_OP_VERSION 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct ixl_pf*,struct ixl_vf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_pf*,struct ixl_vf*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct ixl_pf*,struct ixl_vf*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct ixl_pf*,struct ixl_vf*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct ixl_pf*,struct ixl_vf*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct ixl_pf*,struct ixl_vf*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct ixl_pf*,struct ixl_vf*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct ixl_pf*,struct ixl_vf*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct ixl_pf*,struct ixl_vf*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct ixl_pf*,struct ixl_vf*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct ixl_pf*,struct ixl_vf*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct ixl_pf*,struct ixl_vf*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (struct ixl_pf*,struct ixl_vf*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (struct ixl_pf*,struct ixl_vf*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC18 (struct ixl_pf*,struct ixl_vf*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC19 (struct ixl_pf*,struct ixl_vf*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC20 (struct ixl_pf*,struct ixl_vf*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC21 (struct ixl_pf*,struct ixl_vf*,void*,size_t) ; 
 size_t FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 

void
FUNC24(struct ixl_pf *pf, struct i40e_arq_event_info *event)
{
	struct ixl_vf *vf;
	void *msg;
	uint16_t vf_num, msg_size;
	uint32_t opcode;

	vf_num = FUNC22(event->desc.retval) - pf->hw.func_caps.vf_base_id;
	opcode = FUNC23(event->desc.cookie_high);

	if (vf_num >= pf->num_vfs) {
		FUNC1(pf->dev, "Got msg from illegal VF: %d\n", vf_num);
		return;
	}

	vf = &pf->vfs[vf_num];
	msg = event->msg_buf;
	msg_size = event->msg_len;

	FUNC0(pf, FUNC4(opcode),
	    "Got msg %s(%d) from%sVF-%d of size %d\n",
	    FUNC5(opcode), opcode,
	    (vf->vf_flags & VF_FLAG_ENABLED) ? " " : " disabled ",
	    vf_num, msg_size);

	/* This must be a stray msg from a previously destroyed VF. */
	if (!(vf->vf_flags & VF_FLAG_ENABLED))
		return;

	switch (opcode) {
	case VIRTCHNL_OP_VERSION:
		FUNC21(pf, vf, msg, msg_size);
		break;
	case VIRTCHNL_OP_RESET_VF:
		FUNC19(pf, vf, msg, msg_size);
		break;
	case VIRTCHNL_OP_GET_VF_RESOURCES:
		FUNC17(pf, vf, msg, msg_size);
		/* Notify VF of link state after it obtains queues, as this is
		 * the last thing it will do as part of initialization
		 */
		FUNC3(pf, vf);
		break;
	case VIRTCHNL_OP_CONFIG_VSI_QUEUES:
		FUNC12(pf, vf, msg, msg_size);
		break;
	case VIRTCHNL_OP_CONFIG_IRQ_MAP:
		FUNC8(pf, vf, msg, msg_size);
		break;
	case VIRTCHNL_OP_ENABLE_QUEUES:
		FUNC16(pf, vf, msg, msg_size);
		/* Notify VF of link state after it obtains queues, as this is
		 * the last thing it will do as part of initialization
		 */
		FUNC3(pf, vf);
		break;
	case VIRTCHNL_OP_DISABLE_QUEUES:
		FUNC15(pf, vf, msg, msg_size);
		break;
	case VIRTCHNL_OP_ADD_ETH_ADDR:
		FUNC6(pf, vf, msg, msg_size);
		break;
	case VIRTCHNL_OP_DEL_ETH_ADDR:
		FUNC13(pf, vf, msg, msg_size);
		break;
	case VIRTCHNL_OP_ADD_VLAN:
		FUNC7(pf, vf, msg, msg_size);
		break;
	case VIRTCHNL_OP_DEL_VLAN:
		FUNC14(pf, vf, msg, msg_size);
		break;
	case VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE:
		FUNC9(pf, vf, msg, msg_size);
		break;
	case VIRTCHNL_OP_GET_STATS:
		FUNC18(pf, vf, msg, msg_size);
		break;
	case VIRTCHNL_OP_CONFIG_RSS_KEY:
		FUNC10(pf, vf, msg, msg_size);
		break;
	case VIRTCHNL_OP_CONFIG_RSS_LUT:
		FUNC11(pf, vf, msg, msg_size);
		break;
	case VIRTCHNL_OP_SET_RSS_HENA:
		FUNC20(pf, vf, msg, msg_size);
		break;

	/* These two opcodes have been superseded by CONFIG_VSI_QUEUES. */
	case VIRTCHNL_OP_CONFIG_TX_QUEUE:
	case VIRTCHNL_OP_CONFIG_RX_QUEUE:
	default:
		FUNC2(pf, vf, opcode, I40E_ERR_NOT_IMPLEMENTED);
		break;
	}
}