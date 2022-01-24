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
struct TYPE_2__ {struct server* frag_ptr; struct server* tcp; } ;
struct server {int flags; int sockfd; int link_type; TYPE_1__ data; struct server* next; struct server* server; struct libalias* la; } ;
struct libalias {scalar_t__ deleteAllLinks; int packetAliasMode; int /*<<< orphan*/  protoLinkCount; int /*<<< orphan*/  fragmentPtrLinkCount; int /*<<< orphan*/  fragmentIdLinkCount; int /*<<< orphan*/  pptpLinkCount; int /*<<< orphan*/  tcpLinkCount; int /*<<< orphan*/  udpLinkCount; int /*<<< orphan*/  icmpLinkCount; int /*<<< orphan*/  sockCount; } ;
struct alias_link {int flags; int sockfd; int link_type; TYPE_1__ data; struct alias_link* next; struct alias_link* server; struct libalias* la; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct server*) ; 
 int /*<<< orphan*/  FUNC1 (struct libalias*) ; 
#define  LINK_ADDR 134 
#define  LINK_FRAGMENT_ID 133 
#define  LINK_FRAGMENT_PTR 132 
#define  LINK_ICMP 131 
 int LINK_PERMANENT ; 
#define  LINK_PPTP 130 
#define  LINK_TCP 129 
#define  LINK_UDP 128 
 int /*<<< orphan*/  FUNC2 (struct server*,int /*<<< orphan*/ ) ; 
 int PKT_ALIAS_LOG ; 
 int /*<<< orphan*/  FUNC3 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct server*) ; 
 int /*<<< orphan*/  list_in ; 
 int /*<<< orphan*/  list_out ; 

__attribute__((used)) static void
FUNC6(struct alias_link *lnk)
{
	struct libalias *la = lnk->la;

	FUNC1(la);
/* Don't do anything if the link is marked permanent */
	if (la->deleteAllLinks == 0 && lnk->flags & LINK_PERMANENT)
		return;

#ifndef NO_FW_PUNCH
/* Delete associated firewall hole, if any */
	FUNC0(lnk);
#endif

/* Free memory allocated for LSNAT server pool */
	if (lnk->server != NULL) {
		struct server *head, *curr, *next;

		head = curr = lnk->server;
		do {
			next = curr->next;
			FUNC5(curr);
		} while ((curr = next) != head);
	}
/* Adjust output table pointers */
	FUNC2(lnk, list_out);

/* Adjust input table pointers */
	FUNC2(lnk, list_in);
#ifndef	NO_USE_SOCKETS
/* Close socket, if one has been allocated */
	if (lnk->sockfd != -1) {
		la->sockCount--;
		FUNC4(lnk->sockfd);
	}
#endif
/* Link-type dependent cleanup */
	switch (lnk->link_type) {
	case LINK_ICMP:
		la->icmpLinkCount--;
		break;
	case LINK_UDP:
		la->udpLinkCount--;
		break;
	case LINK_TCP:
		la->tcpLinkCount--;
		FUNC5(lnk->data.tcp);
		break;
	case LINK_PPTP:
		la->pptpLinkCount--;
		break;
	case LINK_FRAGMENT_ID:
		la->fragmentIdLinkCount--;
		break;
	case LINK_FRAGMENT_PTR:
		la->fragmentPtrLinkCount--;
		if (lnk->data.frag_ptr != NULL)
			FUNC5(lnk->data.frag_ptr);
		break;
	case LINK_ADDR:
		break;
	default:
		la->protoLinkCount--;
		break;
	}

/* Free memory */
	FUNC5(lnk);

/* Write statistics, if logging enabled */
	if (la->packetAliasMode & PKT_ALIAS_LOG) {
		FUNC3(la);
	}
}