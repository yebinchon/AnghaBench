#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int16_t ;
struct tcphdr {int /*<<< orphan*/  th_sum; } ;
struct libalias {int dummy; } ;
struct ip {int dummy; } ;
struct alias_link {int dummy; } ;
struct TYPE_5__ {int cid1; int /*<<< orphan*/  cid2; } ;
struct TYPE_4__ {int resCode; } ;
typedef  TYPE_1__* PptpCode ;
typedef  TYPE_2__* PptpCallId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct alias_link* FUNC1 (struct libalias*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC2 (struct ip*,int*) ; 
 struct alias_link* FUNC3 (struct libalias*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct alias_link*) ; 
 int FUNC5 (struct alias_link*) ; 
 int /*<<< orphan*/  FUNC6 (struct alias_link*) ; 
 int /*<<< orphan*/  FUNC7 (struct alias_link*) ; 
#define  PPTP_CallClearRequest 133 
#define  PPTP_CallDiscNotify 132 
#define  PPTP_InCallReply 131 
#define  PPTP_InCallRequest 130 
#define  PPTP_OutCallReply 129 
#define  PPTP_OutCallRequest 128 
 int /*<<< orphan*/  FUNC8 (struct alias_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct alias_link*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct ip*) ; 

__attribute__((used)) static void
FUNC11(struct libalias *la,
    struct ip *pip,		/* IP packet to examine/patch */
    struct alias_link *lnk)
{				/* The PPTP control link */
	struct alias_link *pptp_lnk;
	PptpCallId cptr;
	PptpCode codes;
	u_int16_t ctl_type;	/* control message type */
	struct tcphdr *tc;

	/* Verify valid PPTP control message */
	if ((cptr = FUNC2(pip, &ctl_type)) == NULL)
		return;

	/* Modify certain PPTP messages */
	switch (ctl_type) {
	case PPTP_OutCallRequest:
	case PPTP_OutCallReply:
	case PPTP_InCallRequest:
	case PPTP_InCallReply:
		/*
		 * Establish PPTP link for address and Call ID found in
		 * control message.
		 */
		pptp_lnk = FUNC1(la, FUNC7(lnk), FUNC6(lnk),
		    FUNC4(lnk), cptr->cid1);
		break;
	case PPTP_CallClearRequest:
	case PPTP_CallDiscNotify:
		/*
		 * Find PPTP link for address and Call ID found in control
		 * message.
		 */
		pptp_lnk = FUNC3(la, FUNC7(lnk),
		    FUNC6(lnk),
		    cptr->cid1);
		break;
	default:
		return;
	}

	if (pptp_lnk != NULL) {
		int accumulate = cptr->cid1;

		/* alias the Call Id */
		cptr->cid1 = FUNC5(pptp_lnk);

		/* Compute TCP checksum for revised packet */
		tc = (struct tcphdr *)FUNC10(pip);
		accumulate -= cptr->cid1;
		FUNC0(accumulate, tc->th_sum);

		switch (ctl_type) {
		case PPTP_OutCallReply:
		case PPTP_InCallReply:
			codes = (PptpCode) (cptr + 1);
			if (codes->resCode == 1)	/* Connection
							 * established, */
				FUNC8(pptp_lnk,	/* note the Peer's Call
								 * ID. */
				    cptr->cid2);
			else
				FUNC9(pptp_lnk, 0);	/* Connection refused. */
			break;
		case PPTP_CallDiscNotify:	/* Connection closed. */
			FUNC9(pptp_lnk, 0);
			break;
		}
	}
}