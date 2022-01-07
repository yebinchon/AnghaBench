
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int len; scalar_t__ ptr; scalar_t__ type; } ;
typedef TYPE_2__ packet_t ;
struct TYPE_8__ {int npfilter; TYPE_1__* pfilter; } ;
typedef TYPE_3__ channel_t ;
struct TYPE_6__ {int start; int end; } ;


 int ETHERTYPE_VLAN ;
 int be16dec (scalar_t__) ;

__attribute__((used)) static bool
bnep_pfilter(channel_t *chan, packet_t *pkt)
{
 int proto, i;

 proto = be16dec(pkt->type);
 if (proto == ETHERTYPE_VLAN) {
  if (pkt->len < 4)
   return 0;

  proto = be16dec(pkt->ptr + 2);
 }

 for (i = 0; i < chan->npfilter; i++) {
  if (chan->pfilter[i].start <= proto
      && chan->pfilter[i].end >=proto)
   return 1;
 }

 return 0;
}
