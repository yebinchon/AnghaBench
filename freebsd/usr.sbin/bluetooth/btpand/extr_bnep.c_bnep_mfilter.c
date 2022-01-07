
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dst; } ;
typedef TYPE_2__ packet_t ;
struct TYPE_8__ {int nmfilter; TYPE_1__* mfilter; } ;
typedef TYPE_3__ channel_t ;
struct TYPE_6__ {int end; int start; } ;


 int ETHER_ADDR_LEN ;
 int ETHER_IS_MULTICAST (int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static bool
bnep_mfilter(channel_t *chan, packet_t *pkt)
{
 int i;

 if (!ETHER_IS_MULTICAST(pkt->dst))
  return 1;

 for (i = 0; i < chan->nmfilter; i++) {
  if (memcmp(pkt->dst, chan->mfilter[i].start, ETHER_ADDR_LEN) >= 0
      && memcmp(pkt->dst, chan->mfilter[i].end, ETHER_ADDR_LEN) <= 0)
   return 1;
 }

 return 0;
}
