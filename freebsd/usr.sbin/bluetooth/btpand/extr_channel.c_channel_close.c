
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pkthdr_t ;
struct TYPE_4__ {scalar_t__ state; scalar_t__ refcnt; int * pfh; int qlen; int pktlist; scalar_t__ tick; int fd; int wr_ev; int rd_ev; } ;
typedef TYPE_1__ channel_t ;


 scalar_t__ CHANNEL_CLOSED ;
 int * STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int assert (int) ;
 int channel_free (TYPE_1__*) ;
 int close (int ) ;
 int event_del (int *) ;
 int log_debug (char*,int ) ;
 int next ;
 int pidfile_remove (int *) ;
 int pkthdr_free (int *) ;

void
channel_close(channel_t *chan)
{
 pkthdr_t *ph;

 assert(chan->state != CHANNEL_CLOSED);

 log_debug("(fd#%d)", chan->fd);

 chan->state = CHANNEL_CLOSED;
 event_del(&chan->rd_ev);
 event_del(&chan->wr_ev);
 close(chan->fd);
 chan->refcnt--;
 chan->tick = 0;

 while ((ph = STAILQ_FIRST(&chan->pktlist)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&chan->pktlist, next);
  pkthdr_free(ph);
  chan->qlen--;
 }

 if (chan->pfh != ((void*)0)) {
  pidfile_remove(chan->pfh);
  chan->pfh = ((void*)0);
 }

 if (chan->refcnt == 0)
  channel_free(chan);
}
