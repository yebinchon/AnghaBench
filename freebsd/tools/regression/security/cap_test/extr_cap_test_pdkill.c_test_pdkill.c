
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int FAIL (char*) ;
 int FAILED ;
 int PASSED ;
 int SIGINT ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int err (int,char*) ;
 int exit (int) ;
 int handle_signal ;
 int pdfork (int*,int ) ;
 int pdgetpid (int,scalar_t__*) ;
 int pdkill (int,int ) ;
 int signal (int ,int ) ;
 int sleep (int) ;
 int usleep (int) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

int
test_pdkill(void)
{
 int success = PASSED;
 int pd, error;
 pid_t pid;



 error = pdfork(&pd, 0);
 if (error < 0)
  err(-1, "pdfork");

 else if (error == 0) {
  signal(SIGINT, handle_signal);
  sleep(3600);
  exit(FAILED);
 }


 error = pdgetpid(pd, &pid);
 if (error != 0)
  FAIL("pdgetpid");


 usleep(100);
 error = pdkill(pd, SIGINT);
 if (error != 0)
  FAIL("pdkill");


 int status;
 while (waitpid(pid, &status, 0) != pid) {}
 if ((success == PASSED) && WIFEXITED(status))
  success = WEXITSTATUS(status);
 else
  success = FAILED;

 return (success);
}
