#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int16_t ;
typedef  TYPE_1__* ng_l2cap_p ;
typedef  TYPE_2__* ng_l2cap_con_p ;
typedef  TYPE_3__* ng_l2cap_chan_p ;
struct TYPE_15__ {scalar_t__ scid; scalar_t__ dcid; int idtype; int /*<<< orphan*/  link_timo; int /*<<< orphan*/  flush_timo; int /*<<< orphan*/  oflow; void* omtu; int /*<<< orphan*/  iflow; void* imtu; int /*<<< orphan*/  state; TYPE_2__* con; int /*<<< orphan*/  psm; } ;
struct TYPE_14__ {scalar_t__ linktype; } ;
struct TYPE_13__ {int /*<<< orphan*/  chan_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NETGRAPH_L2CAP ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 scalar_t__ NG_HCI_LINK_ACL ; 
 scalar_t__ NG_L2CAP_ATT_CID ; 
 int /*<<< orphan*/  NG_L2CAP_CLOSED ; 
 int /*<<< orphan*/  NG_L2CAP_FLUSH_TIMO_DEFAULT ; 
 int NG_L2CAP_L2CA_IDTYPE_ATT ; 
 int NG_L2CAP_L2CA_IDTYPE_SMP ; 
 int /*<<< orphan*/  NG_L2CAP_LINK_TIMO_DEFAULT ; 
 void* NG_L2CAP_MTU_DEFAULT ; 
 scalar_t__ NG_L2CAP_NULL_CID ; 
 scalar_t__ NG_L2CAP_SMP_CID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (TYPE_1__*,int) ; 

ng_l2cap_chan_p
FUNC8(ng_l2cap_p l2cap, ng_l2cap_con_p con, u_int16_t psm, int idtype)
{
	ng_l2cap_chan_p	ch = NULL;

	ch = FUNC4(sizeof(*ch), M_NETGRAPH_L2CAP,
		M_NOWAIT|M_ZERO);
	if (ch == NULL)
		return (NULL);
	if(idtype == NG_L2CAP_L2CA_IDTYPE_ATT){
		ch->scid = ch->dcid = NG_L2CAP_ATT_CID;
	}else if(idtype == NG_L2CAP_L2CA_IDTYPE_SMP){
		ch->scid = ch->dcid = NG_L2CAP_SMP_CID;
	}else{
		ch->scid = FUNC7(l2cap,
					    (con->linktype!= NG_HCI_LINK_ACL));
	}
	
	ch->idtype = idtype;
	if (ch->scid != NG_L2CAP_NULL_CID) {
		/* Initialize channel */
		ch->psm = psm;
		ch->con = con;
		ch->state = NG_L2CAP_CLOSED;

		/* Set MTU and flow control settings to defaults */
		ch->imtu = NG_L2CAP_MTU_DEFAULT;
		FUNC1(FUNC6(), &ch->iflow, sizeof(ch->iflow));

		ch->omtu = NG_L2CAP_MTU_DEFAULT;
		FUNC1(FUNC6(), &ch->oflow, sizeof(ch->oflow));

		ch->flush_timo = NG_L2CAP_FLUSH_TIMO_DEFAULT;
		ch->link_timo = NG_L2CAP_LINK_TIMO_DEFAULT;

		FUNC0(&l2cap->chan_list, ch, next);

		FUNC5(con);
	} else {
		FUNC2(ch, sizeof(*ch));
		FUNC3(ch, M_NETGRAPH_L2CAP);
		ch = NULL;
	}

	return (ch);
}