
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sack_bytes_rexmit; int sacked_bytes; } ;
struct tcpcb {int snd_max; int snd_una; TYPE_1__ sackhint; } ;



int
tcp_compute_pipe(struct tcpcb *tp)
{
 return (tp->snd_max - tp->snd_una +
  tp->sackhint.sack_bytes_rexmit -
  tp->sackhint.sacked_bytes);
}
