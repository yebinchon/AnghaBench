
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MCL_CURRENT ;
 int MCL_FUTURE ;
 int _SC_MEMLOCK ;
 int errno ;
 int fprintf (int ,char*) ;
 int mlockall (int) ;
 int munlockall () ;
 int perror (char*) ;
 int quit (char*) ;
 int stderr ;
 int sysconf (int ) ;

int memlock(int argc, char *argv[])
{
 int e = 0;



 errno = 0;
 if (sysconf(_SC_MEMLOCK) == -1) {
  if (errno != 0) {


   quit("(should not happen) sysconf(_SC_MEMLOCK)");
  }
  else {
   fprintf(stderr,
   "Memory locking is not supported in this environment.\n");
   e = -1;
  }
 }



 if (mlockall(MCL_CURRENT | MCL_FUTURE) == -1) {
  perror("mlockall(MCL_CURRENT | MCL_FUTURE)");
  e = errno;
 }
 else if (munlockall() == -1) {
  perror("munlockall");
  e = errno;
 }

 return e;
}
