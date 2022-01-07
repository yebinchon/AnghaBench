
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pkthdr_t ;
typedef int packet_t ;
struct TYPE_4__ {int fd; int oactive; int pktlist; int qlen; } ;
typedef TYPE_1__ channel_t ;


 int EV_WRITE ;
 int STAILQ_INSERT_TAIL (int *,int *,int ) ;
 int channel_start (int ,int ,TYPE_1__*) ;
 int next ;
 int * pkthdr_alloc (int *) ;

void
channel_put(channel_t *chan, packet_t *pkt)
{
 pkthdr_t *ph;

 ph = pkthdr_alloc(pkt);
 if (ph == ((void*)0))
  return;

 chan->qlen++;
 STAILQ_INSERT_TAIL(&chan->pktlist, ph, next);

 if (!chan->oactive)
  channel_start(chan->fd, EV_WRITE, chan);
}
