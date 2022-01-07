
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct stat {scalar_t__ st_birthtime; scalar_t__ st_atime; scalar_t__ st_ctime; scalar_t__ st_mtime; } ;
typedef scalar_t__ pid_t ;


 int CHECK (int) ;
 scalar_t__ EBADF ;
 int FAIL (char*) ;
 int FAILED ;
 int FAILX (char*) ;
 int PASSED ;
 int REQUIRE (int ) ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fstat (int,struct stat*) ;
 scalar_t__ pdfork (int*,int ) ;
 int pdgetpid (int,scalar_t__*) ;
 scalar_t__ time (int *) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

int
test_pdfork(void)
{
 struct stat stat;
 int success = PASSED;
 int pd, error;
 pid_t pid;
 time_t now;



 pid = pdfork(&pd, 0);
 if (pid < 0)
  err(-1, "pdfork");

 else if (pid == 0) {





  error = pdgetpid(pd, &pid);
  if (error != -1)
   FAILX("pdgetpid succeeded");
  else if (errno != EBADF)
   FAIL("pdgetpid failed, but errno != EBADF");

  exit(success);
 }


 REQUIRE(fstat(pd, &stat));

 now = time(((void*)0));
 CHECK(now != (time_t)-1);

 CHECK(now >= stat.st_birthtime);
 CHECK((now - stat.st_birthtime) < 2);
 CHECK(stat.st_birthtime == stat.st_atime);
 CHECK(stat.st_atime == stat.st_ctime);
 CHECK(stat.st_ctime == stat.st_mtime);


 error = pdgetpid(pd, &pid);
 CHECK(error == 0);
 CHECK(pid > 0);

 int status;
 while (waitpid(pid, &status, 0) != pid) {}
 if ((success == PASSED) && WIFEXITED(status))
  success = WEXITSTATUS(status);
 else
  success = FAILED;

 return (success);
}
