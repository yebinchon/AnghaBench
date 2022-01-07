
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct nlm_feedback_arg {int dummy; } ;





 struct thread* curthread ;
 int nlm_down (struct nlm_feedback_arg*,struct thread*,char*,int ) ;
 int nlm_up (struct nlm_feedback_arg*,struct thread*,char*) ;

__attribute__((used)) static void
nlm_feedback(int type, int proc, void *arg)
{
 struct thread *td = curthread;
 struct nlm_feedback_arg *nf = (struct nlm_feedback_arg *) arg;

 switch (type) {
 case 128:
 case 129:
  nlm_down(nf, td, "lockd not responding", 0);
  break;

 case 130:
  nlm_up(nf, td, "lockd is alive again");
  break;
 }
}
