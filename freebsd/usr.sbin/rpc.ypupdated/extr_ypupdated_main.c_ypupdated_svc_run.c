
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int fd_set ;


 int EINTR ;
 int _rpc_dtablesize () ;
 int errno ;
 int exit (int ) ;
 int getpid () ;
 int select (int,int*,int *,int *,struct timeval*) ;
 int svc_fds ;
 int svc_fdset ;
 int svc_getreqset (int*) ;
 int warn (char*) ;

__attribute__((used)) static void
ypupdated_svc_run(void)
{



 int readfds;

 extern int forked;
 int pid;
 int fd_setsize = _rpc_dtablesize();


 pid = getpid();

 for (;;) {



  readfds = svc_fds;

  switch (select(fd_setsize, &readfds, ((void*)0), ((void*)0),
          (struct timeval *)0)) {
  case -1:
   if (errno == EINTR) {
    continue;
   }
   warn("svc_run: - select failed");
   return;
  case 0:
   continue;
  default:
   svc_getreqset(&readfds);
   if (forked && pid != getpid())
    exit(0);
  }
 }
}
