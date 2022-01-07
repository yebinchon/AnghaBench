
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ refcnt; scalar_t__ state; scalar_t__ qlen; struct TYPE_5__* sendbuf; struct TYPE_5__* mfilter; struct TYPE_5__* pfilter; int pktlist; } ;
typedef TYPE_1__ channel_t ;


 scalar_t__ CHANNEL_CLOSED ;
 int EXIT_SUCCESS ;
 int LIST_REMOVE (TYPE_1__*,int ) ;
 int STAILQ_EMPTY (int *) ;
 int assert (int) ;
 int channel_count ;
 int exit (int ) ;
 int free (TYPE_1__*) ;
 int log_info (char*) ;
 int next ;
 scalar_t__ server_limit ;
 int server_update (int ) ;

void
channel_free(channel_t *chan)
{

 assert(chan->refcnt == 0);
 assert(chan->state == CHANNEL_CLOSED);
 assert(chan->qlen == 0);
 assert(STAILQ_EMPTY(&chan->pktlist));

 LIST_REMOVE(chan, next);
 free(chan->pfilter);
 free(chan->mfilter);
 free(chan->sendbuf);
 free(chan);

 server_update(--channel_count);

 if (server_limit == 0) {
  log_info("connection closed, exiting");
  exit(EXIT_SUCCESS);
 }
}
