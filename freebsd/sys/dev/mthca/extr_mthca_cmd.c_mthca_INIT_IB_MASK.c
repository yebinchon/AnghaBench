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
typedef  int u32 ;
struct mthca_mailbox {int* buf; int /*<<< orphan*/  dma; } ;
struct mthca_init_ib_param {int vl_cap; int port_width; int mtu_cap; int gid_cap; int pkey_cap; int guid0; int node_guid; int si_guid; scalar_t__ set_si_guid; scalar_t__ set_node_guid; scalar_t__ set_guid0; } ;
struct mthca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_INIT_IB ; 
 int /*<<< orphan*/  CMD_TIME_CLASS_A ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INIT_IB_FLAGS_OFFSET ; 
 int INIT_IB_FLAG_G0 ; 
 int INIT_IB_FLAG_NG ; 
 int INIT_IB_FLAG_SIG ; 
 int /*<<< orphan*/  INIT_IB_GUID0_OFFSET ; 
 int /*<<< orphan*/  INIT_IB_IN_SIZE ; 
 int /*<<< orphan*/  INIT_IB_MAX_GID_OFFSET ; 
 int /*<<< orphan*/  INIT_IB_MAX_PKEY_OFFSET ; 
 int INIT_IB_MTU_SHIFT ; 
 int /*<<< orphan*/  INIT_IB_NODE_GUID_OFFSET ; 
 int INIT_IB_PORT_WIDTH_SHIFT ; 
 int /*<<< orphan*/  INIT_IB_SI_GUID_OFFSET ; 
 int INIT_IB_VL_SHIFT ; 
 scalar_t__ FUNC0 (struct mthca_mailbox*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mthca_mailbox*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mthca_mailbox* FUNC4 (struct mthca_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mthca_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_dev*,struct mthca_mailbox*) ; 

int FUNC7(struct mthca_dev *dev,
		  struct mthca_init_ib_param *param,
		  int port)
{
	struct mthca_mailbox *mailbox;
	u32 *inbox;
	int err;
	u32 flags;

#define INIT_IB_IN_SIZE          56
#define INIT_IB_FLAGS_OFFSET     0x00
#define INIT_IB_FLAG_SIG         (1 << 18)
#define INIT_IB_FLAG_NG          (1 << 17)
#define INIT_IB_FLAG_G0          (1 << 16)
#define INIT_IB_VL_SHIFT         4
#define INIT_IB_PORT_WIDTH_SHIFT 8
#define INIT_IB_MTU_SHIFT        12
#define INIT_IB_MAX_GID_OFFSET   0x06
#define INIT_IB_MAX_PKEY_OFFSET  0x0a
#define INIT_IB_GUID0_OFFSET     0x10
#define INIT_IB_NODE_GUID_OFFSET 0x18
#define INIT_IB_SI_GUID_OFFSET   0x20

	mailbox = FUNC4(dev, GFP_KERNEL);
	if (FUNC0(mailbox))
		return FUNC2(mailbox);
	inbox = mailbox->buf;

	FUNC3(inbox, 0, INIT_IB_IN_SIZE);

	flags = 0;
	flags |= param->set_guid0     ? INIT_IB_FLAG_G0  : 0;
	flags |= param->set_node_guid ? INIT_IB_FLAG_NG  : 0;
	flags |= param->set_si_guid   ? INIT_IB_FLAG_SIG : 0;
	flags |= param->vl_cap << INIT_IB_VL_SHIFT;
	flags |= param->port_width << INIT_IB_PORT_WIDTH_SHIFT;
	flags |= param->mtu_cap << INIT_IB_MTU_SHIFT;
	FUNC1(inbox, flags, INIT_IB_FLAGS_OFFSET);

	FUNC1(inbox, param->gid_cap,   INIT_IB_MAX_GID_OFFSET);
	FUNC1(inbox, param->pkey_cap,  INIT_IB_MAX_PKEY_OFFSET);
	FUNC1(inbox, param->guid0,     INIT_IB_GUID0_OFFSET);
	FUNC1(inbox, param->node_guid, INIT_IB_NODE_GUID_OFFSET);
	FUNC1(inbox, param->si_guid,   INIT_IB_SI_GUID_OFFSET);

	err = FUNC5(dev, mailbox->dma, port, 0, CMD_INIT_IB,
			CMD_TIME_CLASS_A);

	FUNC6(dev, mailbox);
	return err;
}