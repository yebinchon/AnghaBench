
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int MAC_POLICY_PERFORM (int ,struct thread*) ;
 int thread_userret ;

void
mac_thread_userret(struct thread *td)
{

 MAC_POLICY_PERFORM(thread_userret, td);
}
