
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int COUNTER_INC (int ) ;
 int thread_userret ;

__attribute__((used)) static void
test_thread_userret(struct thread *td)
{

 COUNTER_INC(thread_userret);
}
