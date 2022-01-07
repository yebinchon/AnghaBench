
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_4__ {TYPE_1__* tcp; } ;
struct alias_link {TYPE_2__ data; } ;
struct ack_data_record {int active; int delta; int ack_new; } ;
struct TYPE_3__ {struct ack_data_record* ack; } ;


 int N_LINK_TCP_DATA ;
 int SeqDiff (int ,int ) ;

int
GetDeltaAckIn(u_long ack, struct alias_link *lnk)
{






 int i;
 int delta, ack_diff_min;

 delta = 0;
 ack_diff_min = -1;
 for (i = 0; i < N_LINK_TCP_DATA; i++) {
  struct ack_data_record x;

  x = lnk->data.tcp->ack[i];
  if (x.active == 1) {
   int ack_diff;

   ack_diff = SeqDiff(x.ack_new, ack);
   if (ack_diff >= 0) {
    if (ack_diff_min >= 0) {
     if (ack_diff < ack_diff_min) {
      delta = x.delta;
      ack_diff_min = ack_diff;
     }
    } else {
     delta = x.delta;
     ack_diff_min = ack_diff;
    }
   }
  }
 }
 return (delta);
}
