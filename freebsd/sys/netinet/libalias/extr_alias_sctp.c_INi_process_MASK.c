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
struct TYPE_6__ {TYPE_2__* Init; } ;
struct sctp_nat_msg {int msg; TYPE_3__ sctpchnk; TYPE_1__* ip_hdr; } ;
struct sctp_nat_assoc {void* state; int /*<<< orphan*/  g_vtag; int /*<<< orphan*/  l_addr; int /*<<< orphan*/  l_vtag; int /*<<< orphan*/  num_Gaddr; } ;
struct libalias {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  initiate_tag; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip_src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_nat_msg*,struct sctp_nat_assoc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct libalias*,struct sctp_nat_assoc*) ; 
 int /*<<< orphan*/  FUNC2 (struct libalias*,struct sctp_nat_assoc*,int /*<<< orphan*/ ) ; 
 int SN_DROP_PKT ; 
 int /*<<< orphan*/  FUNC3 (struct libalias*) ; 
 int SN_NAT_PKT ; 
 void* SN_RM ; 
#define  SN_SCTP_ABORT 132 
#define  SN_SCTP_INIT 131 
#define  SN_SCTP_INITACK 130 
 int SN_SEND_ABORT ; 
#define  SN_TO_GLOBAL 129 
#define  SN_TO_LOCAL 128 
 void* SN_UP ; 
 int /*<<< orphan*/  FUNC4 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC5 (struct libalias*,struct sctp_nat_assoc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct libalias *la, int direction, struct sctp_nat_assoc *assoc, struct sctp_nat_msg *sm)
{
	switch (sm->msg) {
	case SN_SCTP_INIT:            /* a packet containing a retransmitted INIT chunk */
		FUNC5(la, assoc, FUNC3(la));
		return (SN_NAT_PKT);
	case SN_SCTP_INITACK:         /* a packet containing an INIT-ACK chunk */
		switch (direction) {
		case SN_TO_LOCAL:
			if (assoc->num_Gaddr) /*If tracking global addresses for this association */
				FUNC0(sm, assoc, direction);
			assoc->l_vtag = sm->sctpchnk.Init->initiate_tag;
			if (FUNC2(la, assoc, sm->ip_hdr->ip_src)) { /* DB clash */
				assoc->state = SN_RM;/* Mark for removal*/
				return (SN_SEND_ABORT);
			}
			break;
		case SN_TO_GLOBAL:
			assoc->l_addr = sm->ip_hdr->ip_src; // Only if not set in Init! *
			assoc->g_vtag = sm->sctpchnk.Init->initiate_tag;
			if (FUNC1(la, assoc)) { /* DB clash */
				assoc->state = SN_RM;/* Mark for removal*/
				return (SN_SEND_ABORT);
			}
			break;
		}
		assoc->state = SN_UP;/* association established for NAT */
		FUNC5(la,assoc, FUNC4(la));
		return (SN_NAT_PKT);
	case SN_SCTP_ABORT:           /* a packet containing an ABORT chunk */
		assoc->state = SN_RM;/* Mark for removal*/
		return (SN_NAT_PKT);
	default:
		return (SN_DROP_PKT);
	}
	return (SN_DROP_PKT);/* shouldn't get here very bad: log, drop and hope for the best */
}