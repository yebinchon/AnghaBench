
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_UNIX ;
 int AF_UNSPEC ;
 int FIFONAME ;
 int FT_END ;



 int SIGUSR1 ;
 int SOCK_STREAM ;
 int catch ;
 int child (int,int) ;
 int close (int) ;
 int cpid ;
 int err (int,char*) ;
 int fflush (int ) ;
 int filetype ;
 int fork () ;
 int getpid () ;
 int mkfifo (int ,int) ;
 int parent (int) ;
 int pipe (int*) ;
 int ppid ;
 int printf (char*) ;
 int signal (int ,int ) ;
 int socketpair (int ,int ,int ,int*) ;
 scalar_t__ state ;
 int stdout ;
 int unlink (int ) ;

int
main(void)
{
 int fd[2], num;

 num = 1;
 printf("1..20\n");
 fflush(stdout);
 signal(SIGUSR1, catch);
 ppid = getpid();
 for (filetype = 0; filetype < FT_END; filetype++) {
  switch (filetype) {
  case 130:
   if (mkfifo(FIFONAME, 0666) != 0)
    err(1, "mkfifo");
   fd[0] = -1;
   fd[1] = -1;
   break;
  case 128:
   if (socketpair(AF_UNIX, SOCK_STREAM, AF_UNSPEC,
       fd) != 0)
    err(1, "socketpair");
   break;
  case 129:
   if (pipe(fd) != 0)
    err(1, "pipe");
   break;
  }
  state = 0;
  switch (cpid = fork()) {
  case -1:
   err(1, "fork");
  case 0:
   (void)close(fd[1]);
   child(fd[0], num);
   break;
  default:
   (void)close(fd[0]);
   parent(fd[1]);
   break;
  }
  num += filetype == 130 ? 12 : 4;
 }
 (void)unlink(FIFONAME);
 return (0);
}
