#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* s_addr; } ;
struct TYPE_3__ {void* s_addr; } ;
struct ip {int ip_hl; int ip_v; int ip_ttl; TYPE_2__ ip_dst; TYPE_1__ ip_src; scalar_t__ ip_sum; int /*<<< orphan*/  ip_p; scalar_t__ ip_off; scalar_t__ ip_id; int /*<<< orphan*/  ip_len; scalar_t__ ip_tos; } ;
struct lopacket {struct ip hdr; int /*<<< orphan*/  family; } ;
typedef  void* in_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct lopacket* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct lopacket*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct ip*) ; 

__attribute__((used)) static struct lopacket *
FUNC5(in_addr_t dstaddr, size_t payloadlen)
{
	struct ip *ip;
	struct lopacket *packet;
	size_t pktlen;

	pktlen = sizeof(*packet) + payloadlen;
	packet = FUNC2(pktlen);
	FUNC0(packet != NULL);

	FUNC3(packet, 0, pktlen);
	packet->family = AF_INET;

	ip = &packet->hdr;
	ip->ip_hl = sizeof(struct ip) >> 2;
	ip->ip_v = 4;
	ip->ip_tos = 0;
	ip->ip_len = FUNC1(sizeof(*ip) + payloadlen);
	ip->ip_id = 0;
	ip->ip_off = 0;
	ip->ip_ttl = 1;
	ip->ip_p = IPPROTO_IP;
	ip->ip_sum = 0;
	ip->ip_src.s_addr = dstaddr;
	ip->ip_dst.s_addr = dstaddr;
	FUNC4(ip);

	return (packet);
}