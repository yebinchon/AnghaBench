
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* s_addr; } ;
struct TYPE_3__ {void* s_addr; } ;
struct ip {int ip_hl; int ip_v; int ip_ttl; TYPE_2__ ip_dst; TYPE_1__ ip_src; scalar_t__ ip_sum; int ip_p; scalar_t__ ip_off; scalar_t__ ip_id; int ip_len; scalar_t__ ip_tos; } ;
struct lopacket {struct ip hdr; int family; } ;
typedef void* in_addr_t ;


 int AF_INET ;
 int ATF_REQUIRE (int ) ;
 int IPPROTO_IP ;
 int htons (int) ;
 struct lopacket* malloc (size_t) ;
 int memset (struct lopacket*,int ,size_t) ;
 int update_cksum (struct ip*) ;

__attribute__((used)) static struct lopacket *
alloc_lopacket(in_addr_t dstaddr, size_t payloadlen)
{
 struct ip *ip;
 struct lopacket *packet;
 size_t pktlen;

 pktlen = sizeof(*packet) + payloadlen;
 packet = malloc(pktlen);
 ATF_REQUIRE(packet != ((void*)0));

 memset(packet, 0, pktlen);
 packet->family = AF_INET;

 ip = &packet->hdr;
 ip->ip_hl = sizeof(struct ip) >> 2;
 ip->ip_v = 4;
 ip->ip_tos = 0;
 ip->ip_len = htons(sizeof(*ip) + payloadlen);
 ip->ip_id = 0;
 ip->ip_off = 0;
 ip->ip_ttl = 1;
 ip->ip_p = IPPROTO_IP;
 ip->ip_sum = 0;
 ip->ip_src.s_addr = dstaddr;
 ip->ip_dst.s_addr = dstaddr;
 update_cksum(ip);

 return (packet);
}
