
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIG_PIPE_SIZE ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int close (int) ;
 int err (int,char*,...) ;
 int errno ;
 int errx (int,char*) ;
 int exit (int) ;
 int fcntl (int,int ,...) ;
 int fork () ;
 int memset (char*,int ,int) ;
 scalar_t__ pipe (int*) ;
 int printf (char*,...) ;
 int read (int,char*,int) ;
 char* strerror (int ) ;
 int write_frame (int,char*,int) ;

int
main(void)
{

 char buf[BIG_PIPE_SIZE];
 int i, flags, fd[2];

 if (pipe(fd) < 0)
  errx(1, "pipe failed");

 flags = fcntl(fd[1], F_GETFL);
 if (flags == -1 || fcntl(fd[1], F_SETFL, flags|O_NONBLOCK) == -1) {
  printf("fcntl failed: %s\n", strerror(errno));
  exit(1);
 }

 switch (fork()) {
 case -1:
  err(1, "fork failed: %s\n", strerror(errno));
  break;
 case 0:
  close(fd[1]);
  for (;;) {

   i = read(fd[0], buf, 256);
   if (i == 0)
    break;
   if (i < 0)
    err(1, "read");
  }
  exit(0);
 default:
  break;
 }

 close(fd[0]);
 memset(buf, 0, sizeof buf);
 for (i = 0; i < 1000; i++)
  write_frame(fd[1], buf, sizeof buf);

 printf("ok\n");
 exit(0);
}
