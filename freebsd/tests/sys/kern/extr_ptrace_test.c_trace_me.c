
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHILD_REQUIRE (int) ;
 int PT_TRACE_ME ;
 int SIGSTOP ;
 int ptrace (int ,int ,int *,int ) ;
 int raise (int ) ;

__attribute__((used)) static void
trace_me(void)
{


 CHILD_REQUIRE(ptrace(PT_TRACE_ME, 0, ((void*)0), 0) != -1);


 raise(SIGSTOP);
}
