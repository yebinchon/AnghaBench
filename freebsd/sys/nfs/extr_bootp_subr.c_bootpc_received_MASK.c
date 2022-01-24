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
struct bootpc_ifcontext {int dhcpquerytype; scalar_t__ state; int gotdhcpserver; int /*<<< orphan*/  replylen; int /*<<< orphan*/  reply; int /*<<< orphan*/  gotnetmask; int /*<<< orphan*/  gotgw; int /*<<< orphan*/  gotrootpath; int /*<<< orphan*/  dhcpserver; } ;
struct TYPE_2__ {scalar_t__ badopt; int taglen; } ;
struct bootpc_globalcontext {TYPE_1__ tmptag; int /*<<< orphan*/  replylen; int /*<<< orphan*/  reply; } ;

/* Variables and functions */
 unsigned char DHCP_ACK ; 
#define  DHCP_DISCOVER 130 
#define  DHCP_NOMSG 129 
 unsigned char DHCP_OFFER ; 
#define  DHCP_REQUEST 128 
 scalar_t__ IF_BOOTP_RESOLVED ; 
 scalar_t__ IF_BOOTP_UNRESOLVED ; 
 scalar_t__ IF_DHCP_OFFERED ; 
 scalar_t__ IF_DHCP_RESOLVED ; 
 scalar_t__ IF_DHCP_UNRESOLVED ; 
 int /*<<< orphan*/  TAG_DHCP_MSGTYPE ; 
 int /*<<< orphan*/  TAG_DHCP_SERVERID ; 
 int /*<<< orphan*/  TAG_END ; 
 int /*<<< orphan*/  TAG_ROOT ; 
 int /*<<< orphan*/  TAG_ROUTERS ; 
 int /*<<< orphan*/  TAG_SUBNETMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int
FUNC3(struct bootpc_globalcontext *gctx,
    struct bootpc_ifcontext *ifctx)
{
	unsigned char dhcpreplytype;
	char *p;

	/*
	 * Need timeout for fallback to less
	 * desirable alternative.
	 */

	/* This call used for the side effect (badopt flag) */
	(void) FUNC1(&gctx->tmptag, &gctx->reply,
			  gctx->replylen,
			  TAG_END);

	/* If packet is invalid, ignore it */
	if (gctx->tmptag.badopt != 0)
		return 0;

	p = FUNC1(&gctx->tmptag, &gctx->reply,
		       gctx->replylen, TAG_DHCP_MSGTYPE);
	if (p != NULL)
		dhcpreplytype = *p;
	else
		dhcpreplytype = DHCP_NOMSG;

	switch (ifctx->dhcpquerytype) {
	case DHCP_DISCOVER:
		if (dhcpreplytype != DHCP_OFFER 	/* Normal DHCP offer */
#ifndef BOOTP_FORCE_DHCP
		    && dhcpreplytype != DHCP_NOMSG	/* Fallback to BOOTP */
#endif
			)
			return 0;
		break;
	case DHCP_REQUEST:
		if (dhcpreplytype != DHCP_ACK)
			return 0;
	case DHCP_NOMSG:
		break;
	}

	/* Ignore packet unless it gives us a root tag we didn't have */

	if ((ifctx->state == IF_BOOTP_RESOLVED ||
	     (ifctx->dhcpquerytype == DHCP_DISCOVER &&
	      (ifctx->state == IF_DHCP_OFFERED ||
	       ifctx->state == IF_DHCP_RESOLVED))) &&
	    (FUNC1(&gctx->tmptag, &ifctx->reply,
			ifctx->replylen,
			TAG_ROOT) != NULL ||
	     FUNC1(&gctx->tmptag, &gctx->reply,
			gctx->replylen,
			TAG_ROOT) == NULL))
		return 0;

	FUNC0(&gctx->reply, &ifctx->reply, gctx->replylen);
	ifctx->replylen = gctx->replylen;

	/* XXX: Only reset if 'perfect' response */
	if (ifctx->state == IF_BOOTP_UNRESOLVED)
		ifctx->state = IF_BOOTP_RESOLVED;
	else if (ifctx->state == IF_DHCP_UNRESOLVED &&
		 ifctx->dhcpquerytype == DHCP_DISCOVER) {
		if (dhcpreplytype == DHCP_OFFER)
			ifctx->state = IF_DHCP_OFFERED;
		else
			ifctx->state = IF_BOOTP_RESOLVED;	/* Fallback */
	} else if (ifctx->state == IF_DHCP_OFFERED &&
		   ifctx->dhcpquerytype == DHCP_REQUEST)
		ifctx->state = IF_DHCP_RESOLVED;


	if (ifctx->dhcpquerytype == DHCP_DISCOVER &&
	    ifctx->state != IF_BOOTP_RESOLVED) {
		p = FUNC1(&gctx->tmptag, &ifctx->reply,
			       ifctx->replylen, TAG_DHCP_SERVERID);
		if (p != NULL && gctx->tmptag.taglen == 4) {
			FUNC2(&ifctx->dhcpserver, p, 4);
			ifctx->gotdhcpserver = 1;
		} else
			ifctx->gotdhcpserver = 0;
		return 1;
	}

	ifctx->gotrootpath = (FUNC1(&gctx->tmptag, &ifctx->reply,
					 ifctx->replylen,
					 TAG_ROOT) != NULL);
	ifctx->gotgw = (FUNC1(&gctx->tmptag, &ifctx->reply,
				   ifctx->replylen,
				   TAG_ROUTERS) != NULL);
	ifctx->gotnetmask = (FUNC1(&gctx->tmptag, &ifctx->reply,
					ifctx->replylen,
					TAG_SUBNETMASK) != NULL);
	return 1;
}