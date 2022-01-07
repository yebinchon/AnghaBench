
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {scalar_t__ ki_pid; scalar_t__ ki_stat; scalar_t__ ki_slptime; int ki_tdflags; int ki_estcpu; } ;



 int ISRUN (struct kinfo_proc*) ;


 scalar_t__ SZOMB ;
 int TDF_SINTR ;
 int TESTAB (int,int) ;

int
proc_compare(struct kinfo_proc *p1, struct kinfo_proc *p2)
{

 if (p1 == ((void*)0))
  return (1);



 switch (TESTAB(ISRUN(p1), ISRUN(p2))) {
 case 129:
  return (0);
 case 128:
  return (1);
 case 130:



  if (p2->ki_estcpu > p1->ki_estcpu)
   return (1);
  if (p1->ki_estcpu > p2->ki_estcpu)
   return (0);
  return (p2->ki_pid > p1->ki_pid);
 }



 switch (TESTAB(p1->ki_stat == SZOMB, p2->ki_stat == SZOMB)) {
 case 129:
  return (1);
 case 128:
  return (0);
 case 130:
  return (p2->ki_pid > p1->ki_pid);
 }



 if (p2->ki_slptime > p1->ki_slptime)
  return (0);
 if (p1->ki_slptime > p2->ki_slptime)
  return (1);



 if (p1->ki_tdflags & TDF_SINTR && (p2->ki_tdflags & TDF_SINTR) == 0)
  return (1);
 if (p2->ki_tdflags & TDF_SINTR && (p1->ki_tdflags & TDF_SINTR) == 0)
  return (0);
 return (p2->ki_pid > p1->ki_pid);
}
