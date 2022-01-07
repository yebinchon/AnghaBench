
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct td_sched {int ts_slptime; unsigned int ts_estcpu; } ;
typedef int fixpt_t ;
struct TYPE_2__ {int * ldavg; } ;


 TYPE_1__ averunnable ;
 unsigned int decay_cpu (int,unsigned int) ;
 int loadfactor (int ) ;
 struct td_sched* td_get_sched (struct thread*) ;

__attribute__((used)) static void
updatepri(struct thread *td)
{
 struct td_sched *ts;
 fixpt_t loadfac;
 unsigned int newcpu;

 ts = td_get_sched(td);
 loadfac = loadfactor(averunnable.ldavg[0]);
 if (ts->ts_slptime > 5 * loadfac)
  ts->ts_estcpu = 0;
 else {
  newcpu = ts->ts_estcpu;
  ts->ts_slptime--;
  while (newcpu && --ts->ts_slptime)
   newcpu = decay_cpu(loadfac, newcpu);
  ts->ts_estcpu = newcpu;
 }
}
