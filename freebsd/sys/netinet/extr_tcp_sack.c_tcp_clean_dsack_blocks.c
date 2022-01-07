
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* tcp_seq ;
struct tcpcb {int rcv_numsacks; TYPE_1__* sackblks; int rcv_nxt; int t_inpcb; } ;
struct sackblk {void* end; void* start; } ;
struct TYPE_2__ {void* end; void* start; } ;


 int INP_WLOCK_ASSERT (int ) ;
 int MAX_SACK_BLKS ;
 scalar_t__ SEQ_GEQ (void*,void*) ;
 scalar_t__ SEQ_LEQ (void*,int ) ;
 int bcopy (struct sackblk*,TYPE_1__*,int) ;

void
tcp_clean_dsack_blocks(struct tcpcb *tp)
{
 struct sackblk saved_blks[MAX_SACK_BLKS];
 int num_saved, i;

 INP_WLOCK_ASSERT(tp->t_inpcb);





 num_saved = 0;
 for (i = 0; i < tp->rcv_numsacks; i++) {
  tcp_seq start = tp->sackblks[i].start;
  tcp_seq end = tp->sackblks[i].end;
  if (SEQ_GEQ(start, end) || SEQ_LEQ(start, tp->rcv_nxt)) {



   continue;
  }



  saved_blks[num_saved].start = start;
  saved_blks[num_saved].end = end;
  num_saved++;
 }
 if (num_saved > 0) {



  bcopy(saved_blks, &tp->sackblks[0],
        sizeof(struct sackblk) * num_saved);
 }
 tp->rcv_numsacks = num_saved;
}
