
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parsec {scalar_t__ matchidx; } ;
struct mprintc {int same_file; scalar_t__ last_outed; scalar_t__ printmatch; int tail; scalar_t__ doctx; } ;


 int Aflag ;
 scalar_t__ Bflag ;
 scalar_t__ MAX_MATCHES ;
 int first_match ;
 int printf (char*) ;
 int printline (struct parsec*,char) ;
 int printqueue () ;
 int procline (struct parsec*) ;
 int vflag ;

__attribute__((used)) static void
procmatch_match(struct mprintc *mc, struct parsec *pc)
{

 if (mc->doctx) {
  if (!first_match && (!mc->same_file || mc->last_outed > 0))
   printf("--\n");
  if (Bflag > 0)
   printqueue();
  mc->tail = Aflag;
 }


 if (mc->printmatch) {
  printline(pc, ':');
  while (pc->matchidx >= MAX_MATCHES) {

   pc->matchidx = 0;
   if (procline(pc) == !vflag)
    printline(pc, ':');
   else
    break;
  }
  first_match = 0;
  mc->same_file = 1;
  mc->last_outed = 0;
 }
}
