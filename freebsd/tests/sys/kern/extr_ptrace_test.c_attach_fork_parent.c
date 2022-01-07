
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int fpid ;


 int CHILD_REQUIRE (int) ;
 int _exit (int) ;
 int close (int) ;
 int fork () ;
 int getpid () ;
 scalar_t__ read (int,int*,int) ;
 int write (int,int*,int) ;

__attribute__((used)) static void
attach_fork_parent(int cpipe[2])
{
 pid_t fpid;

 close(cpipe[0]);


 CHILD_REQUIRE((fpid = fork()) != -1);
 if (fpid != 0)
  _exit(3);


 fpid = getpid();
 CHILD_REQUIRE(write(cpipe[1], &fpid, sizeof(fpid)) == sizeof(fpid));


 CHILD_REQUIRE(read(cpipe[1], &fpid, sizeof(fpid)) == 0);
}
