
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pidfh {int dummy; } ;
typedef int pid_t ;


 int EEXIST ;
 int err (int,char*,char const*) ;
 int errno ;
 int errx (int,char*,int ) ;
 struct pidfh* pidfile_open (char const*,int,int *) ;
 int pidfile_remove (struct pidfh*) ;

__attribute__((used)) static void
open_pid_files(const char *pidfile, const char *ppidfile,
        struct pidfh **pfh, struct pidfh **ppfh)
{
 pid_t fpid;
 int serrno;

 if (pidfile) {
  *pfh = pidfile_open(pidfile, 0600, &fpid);
  if (*pfh == ((void*)0)) {
   if (errno == EEXIST) {
    errx(3, "process already running, pid: %d",
        fpid);
   }
   err(2, "pidfile ``%s''", pidfile);
  }
 }

 if (ppidfile) {
  *ppfh = pidfile_open(ppidfile, 0600, &fpid);
  if (*ppfh == ((void*)0)) {
   serrno = errno;
   pidfile_remove(*pfh);
   errno = serrno;
   if (errno == EEXIST) {
    errx(3, "process already running, pid: %d",
         fpid);
   }
   err(2, "ppidfile ``%s''", ppidfile);
  }
 }
}
