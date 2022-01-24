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
struct TYPE_5__ {int cid1; int cid2; } ;
struct TYPE_4__ {int resCode; } ;
typedef  TYPE_1__* PptpCode ;
typedef  TYPE_2__* PptpCallId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct ip*,int*) ; 
 struct alias_link* FUNC2 (struct libalias*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct alias_link* FUNC3 (struct libalias*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct alias_link*) ; 
 int /*<<< orphan*/  FUNC5 (struct alias_link*) ; 
 int FUNC6 (struct alias_link*) ; 
#define  PPTP_CallDiscNotify 133 
#define  PPTP_InCallConn 132 
#define  PPTP_InCallReply 131 
#define  PPTP_OutCallReply 130 
#define  PPTP_SetLinkInfo 129 
#define  PPTP_WanErrorNotify 128 
 int /*<<< orphan*/  FUNC7 (struct alias_link*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct alias_link*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct ip*) ; 

__attribute__((used)) static void
FUNC10(struct libalias *la,
    struct ip *pip,		/* IP packet to examine/patch */
    struct alias_link *lnk)
{				/* The PPTP control link */
	struct alias_link *pptp_lnk;
	PptpCallId cptr;
	u_int16_t *pcall_id;
	u_int16_t ctl_type;	/* control message type */
	struct tcphdr *tc;

	/* Verify valid PPTP control message */
	if ((cptr = FUNC1(pip, &ctl_type)) == NULL)
		return;

	/* Modify certain PPTP messages */
	switch (ctl_type) {
	case PPTP_InCallConn:
	case PPTP_WanErrorNotify:
	case PPTP_SetLinkInfo:
		pcall_id = &cptr->cid1;
		break;
	case PPTP_OutCallReply:
	case PPTP_InCallReply:
		pcall_id = &cptr->cid2;
		break;
	case PPTP_CallDiscNotify:	/* Connection closed. */
		pptp_lnk = FUNC2(la, FUNC5(lnk),
		    FUNC4(lnk),
		    cptr->cid1);
		if (pptp_lnk != NULL)
			FUNC8(pptp_lnk, 0);
		return;
	default:
		return;
	}

	/* Find PPTP link for address and Call ID found in PPTP Control Msg */
	pptp_lnk = FUNC3(la, FUNC5(lnk),
	    FUNC4(lnk),
	    *pcall_id);

	if (pptp_lnk != NULL) {
		int accumulate = *pcall_id;

		/* De-alias the Peer's Call Id. */
		*pcall_id = FUNC6(pptp_lnk);

		/* Compute TCP checksum for modified packet */
		tc = (struct tcphdr *)FUNC9(pip);
		accumulate -= *pcall_id;
		FUNC0(accumulate, tc->th_sum);

		if (ctl_type == PPTP_OutCallReply || ctl_type == PPTP_InCallReply) {
			PptpCode codes = (PptpCode) (cptr + 1);

			if (codes->resCode == 1)	/* Connection
							 * established, */
				FUNC7(pptp_lnk,	/* note the Call ID. */
				    cptr->cid1);
			else
				FUNC8(pptp_lnk, 0);	/* Connection refused. */
		}
	}
}