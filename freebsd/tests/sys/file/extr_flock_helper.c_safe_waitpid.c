
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int EINTR ;
 int err (int,char*) ;
 int errno ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static int
safe_waitpid(pid_t pid)
{
 int save_errno;
 int status;

 save_errno = errno;
 errno = 0;
 while (waitpid(pid, &status, 0) != pid) {
  if (errno == EINTR)
   continue;
  err(1, "waitpid");
 }
 errno = save_errno;

 return (status);
}
