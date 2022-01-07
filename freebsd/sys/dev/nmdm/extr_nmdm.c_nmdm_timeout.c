
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmdmpart {scalar_t__ np_rate; int np_accumulator; int np_quota; int np_callout; int np_task; scalar_t__ np_credits; } ;


 int QS ;
 int callout_reset (int *,scalar_t__,void (*) (void*),struct nmdmpart*) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static void
nmdm_timeout(void *arg)
{
 struct nmdmpart *np = arg;

 if (np->np_rate == 0)
  return;





 np->np_accumulator += np->np_credits;
 np->np_quota = np->np_accumulator >> QS;
 np->np_accumulator &= ((1 << QS) - 1);

 taskqueue_enqueue(taskqueue_swi, &np->np_task);
 callout_reset(&np->np_callout, np->np_rate, nmdm_timeout, np);
}
