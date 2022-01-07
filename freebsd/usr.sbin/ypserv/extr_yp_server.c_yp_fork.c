
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int EEXIST ;
 int errno ;
 int fork () ;
 scalar_t__ getpid () ;
 int yp_error (char*,scalar_t__) ;
 scalar_t__ yp_pid ;

__attribute__((used)) static pid_t
yp_fork(void)
{
 if (yp_pid != getpid()) {
  yp_error("child %d trying to fork!", getpid());
  errno = EEXIST;
  return(-1);
 }

 return(fork());
}
