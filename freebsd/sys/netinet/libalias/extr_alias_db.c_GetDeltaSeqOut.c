
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {TYPE_1__* tcp; } ;
struct alias_link {TYPE_2__ data; } ;
struct ack_data_record {int active; int delta; int ack_old; } ;
struct TYPE_3__ {struct ack_data_record* ack; } ;


 int N_LINK_TCP_DATA ;
 int SeqDiff (int ,int ) ;

int
GetDeltaSeqOut(u_long seq, struct alias_link *lnk)
{






 int i;
 int delta, seq_diff_min;

 delta = 0;
 seq_diff_min = -1;
 for (i = 0; i < N_LINK_TCP_DATA; i++) {
  struct ack_data_record x;

  x = lnk->data.tcp->ack[i];
  if (x.active == 1) {
   int seq_diff;

   seq_diff = SeqDiff(x.ack_old, seq);
   if (seq_diff >= 0) {
    if (seq_diff_min >= 0) {
     if (seq_diff < seq_diff_min) {
      delta = x.delta;
      seq_diff_min = seq_diff;
     }
    } else {
     delta = x.delta;
     seq_diff_min = seq_diff;
    }
   }
  }
 }
 return (delta);
}
