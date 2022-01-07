
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {scalar_t__ p_state; scalar_t__ p_pid; } ;
typedef scalar_t__ fixpt_t ;





 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ PRS_ZOMBIE ;
 int TESTAB (int,int) ;
 int proc_sum (struct proc*,scalar_t__*) ;

__attribute__((used)) static int
proc_compare(struct proc *p1, struct proc *p2)
{

 int runa, runb;
 fixpt_t esta, estb;

 if (p1 == ((void*)0))
  return (1);





 PROC_LOCK(p1);
 runa = proc_sum(p1, &esta);
 PROC_UNLOCK(p1);
 PROC_LOCK(p2);
 runb = proc_sum(p2, &estb);
 PROC_UNLOCK(p2);




 switch (TESTAB(runa, runb)) {
 case 129:
  return (0);
 case 128:
  return (1);
 case 130:
  break;
 }



 if (estb > esta)
  return (1);
 if (esta > estb)
  return (0);



 switch (TESTAB(p1->p_state == PRS_ZOMBIE, p2->p_state == PRS_ZOMBIE)) {
 case 129:
  return (1);
 case 128:
  return (0);
 case 130:
  break;
 }

 return (p2->p_pid > p1->p_pid);
}
