
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parsec {int ln; } ;
struct mprintc {scalar_t__ tail; int last_outed; } ;


 scalar_t__ Bflag ;
 int clearqueue () ;
 scalar_t__ enqueue (int *) ;
 int grep_printline (int *,char) ;

__attribute__((used)) static void
procmatch_nomatch(struct mprintc *mc, struct parsec *pc)
{


 if (mc->tail > 0) {
  grep_printline(&pc->ln, '-');
  mc->tail--;
  if (Bflag > 0)
   clearqueue();
 } else if (Bflag == 0 || (Bflag > 0 && enqueue(&pc->ln)))






  ++mc->last_outed;
}
