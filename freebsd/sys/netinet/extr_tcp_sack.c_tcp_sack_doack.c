
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tcp_seq ;
struct tcpopt {int to_flags; int to_nsacks; scalar_t__ to_sacks; } ;
struct TYPE_2__ {scalar_t__ sacked_bytes; scalar_t__ last_sack_ack; scalar_t__ sack_bytes_rexmit; } ;
struct tcpcb {scalar_t__ snd_una; scalar_t__ snd_max; scalar_t__ snd_fack; TYPE_1__ sackhint; int snd_holes; int t_inpcb; } ;
struct sackhole {scalar_t__ end; scalar_t__ start; scalar_t__ rxmit; } ;
struct sackblk {scalar_t__ start; scalar_t__ end; } ;
typedef int sack ;


 int INP_WLOCK_ASSERT (int ) ;
 int KASSERT (int,char*) ;
 scalar_t__ SEQ_GEQ (scalar_t__,scalar_t__) ;
 scalar_t__ SEQ_GT (scalar_t__,scalar_t__) ;
 scalar_t__ SEQ_LEQ (scalar_t__,scalar_t__) ;
 scalar_t__ SEQ_LT (scalar_t__,scalar_t__) ;
 void* SEQ_MAX (scalar_t__,scalar_t__) ;
 void* SEQ_MIN (scalar_t__,scalar_t__) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct sackhole* TAILQ_LAST (int *,int ) ;
 struct sackhole* TAILQ_PREV (struct sackhole*,int ,int ) ;
 int TCPOLEN_SACK ;
 int TCP_MAX_SACK ;
 int TOF_SACK ;
 int bcopy (scalar_t__,struct sackblk*,int) ;
 void* ntohl (scalar_t__) ;
 int sackhole_head ;
 int scblink ;
 struct sackhole* tcp_sackhole_insert (struct tcpcb*,scalar_t__,scalar_t__,struct sackhole*) ;
 int tcp_sackhole_remove (struct tcpcb*,struct sackhole*) ;

int
tcp_sack_doack(struct tcpcb *tp, struct tcpopt *to, tcp_seq th_ack)
{
 struct sackhole *cur, *temp;
 struct sackblk sack, sack_blocks[TCP_MAX_SACK + 1], *sblkp;
 int i, j, num_sack_blks, sack_changed;

 INP_WLOCK_ASSERT(tp->t_inpcb);

 num_sack_blks = 0;
 sack_changed = 0;




 if (SEQ_LT(tp->snd_una, th_ack) && !TAILQ_EMPTY(&tp->snd_holes)) {
  sack_blocks[num_sack_blks].start = tp->snd_una;
  sack_blocks[num_sack_blks++].end = th_ack;
 }




 if (to->to_flags & TOF_SACK) {
  tp->sackhint.sacked_bytes = 0;
  for (i = 0; i < to->to_nsacks; i++) {
   bcopy((to->to_sacks + i * TCPOLEN_SACK),
       &sack, sizeof(sack));
   sack.start = ntohl(sack.start);
   sack.end = ntohl(sack.end);
   if (SEQ_GT(sack.end, sack.start) &&
       SEQ_GT(sack.start, tp->snd_una) &&
       SEQ_GT(sack.start, th_ack) &&
       SEQ_LT(sack.start, tp->snd_max) &&
       SEQ_GT(sack.end, tp->snd_una) &&
       SEQ_LEQ(sack.end, tp->snd_max)) {
    sack_blocks[num_sack_blks++] = sack;
    tp->sackhint.sacked_bytes +=
        (sack.end-sack.start);
   }
  }
 }




 if (num_sack_blks == 0)
  return (sack_changed);






 for (i = 0; i < num_sack_blks; i++) {
  for (j = i + 1; j < num_sack_blks; j++) {
   if (SEQ_GT(sack_blocks[i].end, sack_blocks[j].end)) {
    sack = sack_blocks[i];
    sack_blocks[i] = sack_blocks[j];
    sack_blocks[j] = sack;
   }
  }
 }
 if (TAILQ_EMPTY(&tp->snd_holes))







  tp->snd_fack = SEQ_MAX(tp->snd_una, th_ack);
 sblkp = &sack_blocks[num_sack_blks - 1];
 tp->sackhint.last_sack_ack = sblkp->end;
 if (SEQ_LT(tp->snd_fack, sblkp->start)) {






  temp = tcp_sackhole_insert(tp, tp->snd_fack,sblkp->start,((void*)0));
  if (temp != ((void*)0)) {
   tp->snd_fack = sblkp->end;

   sblkp--;
   sack_changed = 1;
  } else {
   while (sblkp >= sack_blocks &&
          SEQ_LT(tp->snd_fack, sblkp->start))
    sblkp--;
   if (sblkp >= sack_blocks &&
       SEQ_LT(tp->snd_fack, sblkp->end))
    tp->snd_fack = sblkp->end;
  }
 } else if (SEQ_LT(tp->snd_fack, sblkp->end)) {

  tp->snd_fack = sblkp->end;
  sack_changed = 1;
 }
 cur = TAILQ_LAST(&tp->snd_holes, sackhole_head);




 while (sblkp >= sack_blocks && cur != ((void*)0)) {
  if (SEQ_GEQ(sblkp->start, cur->end)) {




   sblkp--;
   continue;
  }
  if (SEQ_LEQ(sblkp->end, cur->start)) {




   cur = TAILQ_PREV(cur, sackhole_head, scblink);
   continue;
  }
  tp->sackhint.sack_bytes_rexmit -= (cur->rxmit - cur->start);
  KASSERT(tp->sackhint.sack_bytes_rexmit >= 0,
      ("sackhint bytes rtx >= 0"));
  sack_changed = 1;
  if (SEQ_LEQ(sblkp->start, cur->start)) {

   if (SEQ_GEQ(sblkp->end, cur->end)) {

    temp = cur;
    cur = TAILQ_PREV(cur, sackhole_head, scblink);
    tcp_sackhole_remove(tp, temp);





    continue;
   } else {

    cur->start = sblkp->end;
    cur->rxmit = SEQ_MAX(cur->rxmit, cur->start);
   }
  } else {

   if (SEQ_GEQ(sblkp->end, cur->end)) {

    cur->end = sblkp->start;
    cur->rxmit = SEQ_MIN(cur->rxmit, cur->end);
   } else {




    temp = tcp_sackhole_insert(tp, sblkp->end,
        cur->end, cur);
    if (temp != ((void*)0)) {
     if (SEQ_GT(cur->rxmit, temp->rxmit)) {
      temp->rxmit = cur->rxmit;
      tp->sackhint.sack_bytes_rexmit
          += (temp->rxmit
          - temp->start);
     }
     cur->end = sblkp->start;
     cur->rxmit = SEQ_MIN(cur->rxmit,
         cur->end);
    }
   }
  }
  tp->sackhint.sack_bytes_rexmit += (cur->rxmit - cur->start);





  if (SEQ_LEQ(sblkp->start, cur->start))
   cur = TAILQ_PREV(cur, sackhole_head, scblink);
  else
   sblkp--;
 }
 return (sack_changed);
}
