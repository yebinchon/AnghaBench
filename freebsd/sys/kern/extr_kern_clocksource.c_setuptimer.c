
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int et_flags; } ;


 int ET_FLAGS_ONESHOT ;
 int ET_FLAGS_PERIODIC ;
 int MAX (int,int) ;
 int MIN (int ,int) ;
 int SBT_1S ;
 int hz ;
 int periodic ;
 int profhz ;
 scalar_t__ profiling ;
 int round_freq (TYPE_1__*,int) ;
 int singlemul ;
 int stathz ;
 TYPE_1__* timer ;
 int timerperiod ;

__attribute__((used)) static void
setuptimer(void)
{
 int freq;

 if (periodic && (timer->et_flags & ET_FLAGS_PERIODIC) == 0)
  periodic = 0;
 else if (!periodic && (timer->et_flags & ET_FLAGS_ONESHOT) == 0)
  periodic = 1;
 singlemul = MIN(MAX(singlemul, 1), 20);
 freq = hz * singlemul;
 while (freq < (profiling ? profhz : stathz))
  freq += hz;
 freq = round_freq(timer, freq);
 timerperiod = SBT_1S / freq;
}
