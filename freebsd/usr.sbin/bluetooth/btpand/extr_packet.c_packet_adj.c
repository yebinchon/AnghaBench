
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ refcnt; size_t len; size_t ptr; } ;
typedef TYPE_1__ packet_t ;


 int assert (int) ;

void
packet_adj(packet_t *pkt, size_t size)
{

 assert(pkt->refcnt == 0);
 assert(pkt->len >= size);

 pkt->ptr += size;
 pkt->len -= size;
}
