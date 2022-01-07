
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_5__* chan; int extlist; int refcnt; } ;
typedef TYPE_1__ packet_t ;
typedef TYPE_1__ exthdr_t ;
struct TYPE_8__ {scalar_t__ refcnt; } ;


 TYPE_1__* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int channel_free (TYPE_5__*) ;
 int free (TYPE_1__*) ;
 int next ;

void
packet_free(packet_t *pkt)
{
 exthdr_t *eh;

 if (pkt->refcnt-- > 0)
  return;

 while ((eh = STAILQ_FIRST(&pkt->extlist)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&pkt->extlist, next);
  free(eh);
 }

 pkt->chan->refcnt--;
 if (pkt->chan->refcnt == 0)
  channel_free(pkt->chan);

 free(pkt);
}
