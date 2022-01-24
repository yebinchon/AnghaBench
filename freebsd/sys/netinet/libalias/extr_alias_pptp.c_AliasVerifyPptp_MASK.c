#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int16_t ;
struct tcphdr {int th_off; } ;
struct pptpMsgHead {int dummy; } ;
struct pptpCodes {int dummy; } ;
struct pptpCallIds {int dummy; } ;
struct ip {int ip_hl; int /*<<< orphan*/  ip_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  magic; int /*<<< orphan*/  msgType; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__* PptpMsgHead ;
typedef  int /*<<< orphan*/ * PptpCallId ;

/* Variables and functions */
 scalar_t__ PPTP_CTRL_MSG_TYPE ; 
 scalar_t__ PPTP_InCallReply ; 
 scalar_t__ PPTP_MAGIC ; 
 scalar_t__ PPTP_OutCallReply ; 
 scalar_t__ FUNC0 (struct ip*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct tcphdr*) ; 

__attribute__((used)) static		PptpCallId
FUNC4(struct ip *pip, u_int16_t * ptype)
{				/* IP packet to examine/patch */
	int hlen, tlen, dlen;
	PptpMsgHead hptr;
	struct tcphdr *tc;

	/* Calculate some lengths */
	tc = (struct tcphdr *)FUNC0(pip);
	hlen = (pip->ip_hl + tc->th_off) << 2;
	tlen = FUNC2(pip->ip_len);
	dlen = tlen - hlen;

	/* Verify data length */
	if (dlen < (int)(sizeof(struct pptpMsgHead) + sizeof(struct pptpCallIds)))
		return (NULL);

	/* Move up to PPTP message header */
	hptr = (PptpMsgHead) FUNC3(tc);

	/* Return the control message type */
	*ptype = FUNC2(hptr->type);

	/* Verify PPTP Control Message */
	if ((FUNC2(hptr->msgType) != PPTP_CTRL_MSG_TYPE) ||
	    (FUNC1(hptr->magic) != PPTP_MAGIC))
		return (NULL);

	/* Verify data length. */
	if ((*ptype == PPTP_OutCallReply || *ptype == PPTP_InCallReply) &&
	    (dlen < (int)(sizeof(struct pptpMsgHead) + sizeof(struct pptpCallIds) +
		sizeof(struct pptpCodes))))
		return (NULL);
	else
		return (PptpCallId) (hptr + 1);
}