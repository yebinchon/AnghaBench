
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; int ptr; int type; int src; int dst; } ;
typedef TYPE_1__ packet_t ;


 int ETHER_ADDR_LEN ;
 scalar_t__ ETHER_HDR_LEN ;
 int ETHER_TYPE_LEN ;
 int packet_adj (TYPE_1__*,int ) ;

__attribute__((used)) static bool
tap_recv(packet_t *pkt)
{

 if (pkt->len < ETHER_HDR_LEN)
  return 0;

 pkt->dst = pkt->ptr;
 packet_adj(pkt, ETHER_ADDR_LEN);
 pkt->src = pkt->ptr;
 packet_adj(pkt, ETHER_ADDR_LEN);
 pkt->type = pkt->ptr;
 packet_adj(pkt, ETHER_TYPE_LEN);

 return 1;
}
