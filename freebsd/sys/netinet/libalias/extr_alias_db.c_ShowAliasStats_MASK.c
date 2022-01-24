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
struct libalias {int icmpLinkCount; int udpLinkCount; int sctpLinkCount; int tcpLinkCount; int pptpLinkCount; int protoLinkCount; int fragmentIdLinkCount; int fragmentPtrLinkCount; int /*<<< orphan*/  sockCount; scalar_t__ logDesc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct libalias*) ; 

__attribute__((used)) static void
FUNC2(struct libalias *la)
{

	FUNC1(la);
/* Used for debugging */
	if (la->logDesc) {
		int tot  = la->icmpLinkCount + la->udpLinkCount + 
		  (la->sctpLinkCount>>1) + /* sctp counts half associations */
			la->tcpLinkCount + la->pptpLinkCount +
			la->protoLinkCount + la->fragmentIdLinkCount +
			la->fragmentPtrLinkCount;
		
		FUNC0(la->logDesc,
			 "icmp=%u, udp=%u, tcp=%u, sctp=%u, pptp=%u, proto=%u, frag_id=%u frag_ptr=%u / tot=%u",
			 la->icmpLinkCount,
			 la->udpLinkCount,
			 la->tcpLinkCount,
			 la->sctpLinkCount>>1, /* sctp counts half associations */
			 la->pptpLinkCount,
			 la->protoLinkCount,
			 la->fragmentIdLinkCount,
			 la->fragmentPtrLinkCount, tot);
#ifndef _KERNEL
		FUNC0(la->logDesc, " (sock=%u)\n", la->sockCount); 
#endif
	}
}