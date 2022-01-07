
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int data; } ;
typedef TYPE_1__ pkthdr_t ;
struct TYPE_9__ {int oactive; scalar_t__ qlen; int (* send ) (TYPE_2__*,int ) ;int pktlist; int wr_ev; } ;
typedef TYPE_2__ channel_t ;


 TYPE_1__* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int channel_close (TYPE_2__*) ;
 int channel_timeout (TYPE_2__*,int) ;
 int event_add (int *,int *) ;
 int log_err (char*) ;
 int next ;
 int pkthdr_free (TYPE_1__*) ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static void
channel_start(int fd, short ev, void *arg)
{
 channel_t *chan = arg;
 pkthdr_t *ph;

 chan->oactive = 1;

 while (chan->qlen > 0) {
  ph = STAILQ_FIRST(&chan->pktlist);

  channel_timeout(chan, 10);
  if (chan->send(chan, ph->data) == 0) {
   if (event_add(&chan->wr_ev, ((void*)0)) == -1) {
    log_err("Could not add channel write event: %m");
    channel_close(chan);
   }
   return;
  }

  STAILQ_REMOVE_HEAD(&chan->pktlist, next);
  pkthdr_free(ph);
  chan->qlen--;
 }

 channel_timeout(chan, 0);
 chan->oactive = 0;
}
