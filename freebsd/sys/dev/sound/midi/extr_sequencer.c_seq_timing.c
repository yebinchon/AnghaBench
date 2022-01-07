
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct seq_softc {int unit; int timerbase; int tempo; int music; int reset_cv; } ;


 int SEQ_DEBUG (int,int ) ;
 int SEQ_ECHO ;
 int cv_broadcast (int *) ;
 int printf (char*,int,...) ;
 int seq_copytoinput (struct seq_softc*,int*,int) ;
 int timer_continue (struct seq_softc*) ;
 int timer_setvals (struct seq_softc*,int,int) ;
 int timer_start (struct seq_softc*) ;
 int timer_stop (struct seq_softc*) ;
 int timer_wait (struct seq_softc*,int,int) ;

__attribute__((used)) static int
seq_timing(struct seq_softc *scp, u_char *event)
{
 int param;
 int ret;

 ret = 0;
 param = event[4] + (event[5] << 8) +
     (event[6] << 16) + (event[7] << 24);

 SEQ_DEBUG(5, printf("seq_timing: unit %d, cmd %d, param %d.\n",
     scp->unit, event[1], param));
 switch (event[1]) {
 case 128:
  timer_wait(scp, param, 0);
  break;
 case 129:
  timer_wait(scp, param, 1);
  break;
 case 133:
  timer_start(scp);
  cv_broadcast(&scp->reset_cv);
  break;
 case 132:
  timer_stop(scp);




  cv_broadcast(&scp->reset_cv);
  break;
 case 135:
  timer_continue(scp);
  cv_broadcast(&scp->reset_cv);
  break;
 case 131:
  if (param < 8)
   param = 8;
  if (param > 360)
   param = 360;
  SEQ_DEBUG(4, printf("Timer set tempo %d\n", param));
  timer_setvals(scp, param, scp->timerbase);
  break;
 case 130:
  if (param < 1)
   param = 1;
  if (param > 1000)
   param = 1000;
  SEQ_DEBUG(4, printf("Timer set timerbase %d\n", param));
  timer_setvals(scp, scp->tempo, param);
  break;
 case 134:
  seq_copytoinput(scp, event, 8);

  break;
 default:
  SEQ_DEBUG(2, printf("seq_timing event type %d not handled.\n",
      event[1]));
  ret = 1;
  break;
 }
 return ret;
}
