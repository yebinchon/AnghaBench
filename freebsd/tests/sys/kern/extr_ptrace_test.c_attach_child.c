
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int ATF_REQUIRE (int) ;
 int PT_ATTACH ;
 scalar_t__ SIGSTOP ;
 int WIFSTOPPED (int) ;
 scalar_t__ WSTOPSIG (int) ;
 scalar_t__ ptrace (int ,scalar_t__,int *,int ) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static void
attach_child(pid_t pid)
{
 pid_t wpid;
 int status;

 ATF_REQUIRE(ptrace(PT_ATTACH, pid, ((void*)0), 0) == 0);

 wpid = waitpid(pid, &status, 0);
 ATF_REQUIRE(wpid == pid);
 ATF_REQUIRE(WIFSTOPPED(status));
 ATF_REQUIRE(WSTOPSIG(status) == SIGSTOP);
}
