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
struct sctp_nat_msg {int msg; } ;
struct sctp_nat_assoc {int /*<<< orphan*/  num_Gaddr; int /*<<< orphan*/  state; } ;
struct libalias {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_nat_msg*,struct sctp_nat_assoc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct libalias*,struct sctp_nat_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_nat_msg*,struct sctp_nat_assoc*,int) ; 
#define  SCTP_ADD_IP_ADDRESS 132 
#define  SCTP_DEL_IP_ADDRESS 131 
 int /*<<< orphan*/  SN_CL ; 
 int /*<<< orphan*/  FUNC3 (struct libalias*) ; 
 int SN_DROP_PKT ; 
 int SN_NAT_PKT ; 
 int /*<<< orphan*/  SN_RM ; 
#define  SN_SCTP_ABORT 130 
#define  SN_SCTP_ASCONF 129 
#define  SN_SCTP_SHUTACK 128 
 int SN_TO_LOCAL ; 
 int /*<<< orphan*/  FUNC4 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC5 (struct libalias*,struct sctp_nat_assoc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct libalias *la, int direction, struct sctp_nat_assoc *assoc, struct sctp_nat_msg *sm)
{
	switch (sm->msg) {
	case SN_SCTP_SHUTACK:         /* a packet containing a SHUTDOWN-ACK chunk */
		assoc->state = SN_CL;
		FUNC5(la,assoc, FUNC3(la));
		return (SN_NAT_PKT);
	case SN_SCTP_ABORT:           /* a packet containing an ABORT chunk */
		assoc->state = SN_RM;/* Mark for removal*/
		return (SN_NAT_PKT);
	case SN_SCTP_ASCONF:           /* a packet containing an ASCONF chunk*/
		if ((direction == SN_TO_LOCAL) && assoc->num_Gaddr) /*If tracking global addresses for this association & from global side */
			switch (FUNC1(la,sm,direction)) {
			case SCTP_ADD_IP_ADDRESS:
				FUNC0(sm, assoc, direction);
				break;
			case SCTP_DEL_IP_ADDRESS:
				FUNC2(sm, assoc, direction);
				break;
			} /* fall through to default */
	default:
		FUNC5(la,assoc, FUNC4(la));
		return (SN_NAT_PKT);  /* forward packet */
	}
	return (SN_DROP_PKT);/* shouldn't get here very bad: log, drop and hope for the best */
}