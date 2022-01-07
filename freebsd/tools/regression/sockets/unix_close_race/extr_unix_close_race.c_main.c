
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockaddr_un {int sun_path; void* sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int servaddr ;
typedef int ncpus ;


 void* AF_LOCAL ;
 int LOOPS ;
 int SIGTERM ;
 int SOCK_STREAM ;
 int USLEEP ;
 int accept (int,struct sockaddr*,int *) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int bzero (struct sockaddr_un*,int) ;
 scalar_t__ close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int exit (int ) ;
 int fork () ;
 int kill (int,int ) ;
 scalar_t__ listen (int,int) ;
 int mkstemp (int ) ;
 int printf (char*) ;
 int sleep (int) ;
 int socket (void*,int ,int ) ;
 int socket_path ;
 int strcpy (int ,int ) ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int *,int ) ;
 int unlink (int ) ;
 int usleep (int ) ;
 int warnx (char*) ;

int
main(void)
{
 struct sockaddr_un servaddr;
 int listenfd, connfd, pid;
 u_int counter, ncpus;
 size_t len;

 len = sizeof(ncpus);
 if (sysctlbyname("kern.smp.cpus", &ncpus, &len, ((void*)0), 0) < 0)
  err(1, "kern.smp.cpus");
 if (len != sizeof(ncpus))
  errx(1, "kern.smp.cpus: invalid length");
 if (ncpus < 2)
  warnx("SMP not present, test may be unable to trigger race");

 if (mkstemp(socket_path) == -1)
  err(1, "mkstemp failed");
 unlink(socket_path);





 if ((listenfd = socket(AF_LOCAL, SOCK_STREAM, 0)) < 0)
  err(1, "parent: socket error");
 (void)unlink(socket_path);
 bzero(&servaddr, sizeof(servaddr));
 servaddr.sun_family = AF_LOCAL;
 strcpy(servaddr.sun_path, socket_path);
 if (bind(listenfd, (struct sockaddr *) &servaddr,
     sizeof(servaddr)) < 0)
  err(1, "parent: bind error");
 if (listen(listenfd, 1024) < 0)
  err(1, "parent: listen error");

 pid = fork();
 if (pid == -1)
  err(1, "fork()");
 if (pid != 0) {




  close(listenfd);
  sleep(1);
  bzero(&servaddr, sizeof(servaddr));
  servaddr.sun_family = AF_LOCAL;
  strcpy(servaddr.sun_path, socket_path);
  for (counter = 0; counter < LOOPS; counter++) {
   if ((connfd = socket(AF_LOCAL, SOCK_STREAM, 0)) < 0) {
    (void)kill(pid, SIGTERM);
    err(1, "parent: socket error");
   }
   if (connect(connfd, (struct sockaddr *)&servaddr,
       sizeof(servaddr)) < 0) {
        (void)kill(pid, SIGTERM);
    err(1, "parent: connect error");
   }
   if (close(connfd) < 0) {
    (void)kill(pid, SIGTERM);
    err(1, "parent: close error");
   }
   usleep(USLEEP);
  }
  (void)kill(pid, SIGTERM);
 } else {




  for ( ; ; ) {
   if ((connfd = accept(listenfd,
       (struct sockaddr *)((void*)0), ((void*)0))) < 0)
    err(1, "child: accept error");
   if (close(connfd) < 0)
    err(1, "child: close error");
  }
 }
 printf("OK\n");
 exit(0);
}
