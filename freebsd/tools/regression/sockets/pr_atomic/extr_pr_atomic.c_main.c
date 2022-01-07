
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int un ;
struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int pid_t ;
typedef int buf ;


 int AF_LOCAL ;
 int PF_LOCAL ;
 int SIGALRM ;
 int SOCK_DGRAM ;
 int _exit (int ) ;
 int alarm (int) ;
 int bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int fork () ;
 int handle_sigalrm ;
 int memset (struct sockaddr_un*,int ,int) ;
 int mkstemp (int ) ;
 int myjmpbuf ;
 int recvfrom (int,void*,int,int ,int *,int *) ;
 int sendto (int,char*,int,int ,struct sockaddr*,int) ;
 scalar_t__ setjmp (int ) ;
 int signal (int ,int ) ;
 int sleep (int) ;
 int socket (int ,int ,int ) ;
 int socket_path ;
 int strcpy (int ,int ) ;
 int unlink (int ) ;

int
main(void)
{
 struct sockaddr_un un;
 pid_t pid;
 int s;

 if (mkstemp(socket_path) == -1)
  err(1, "mkstemp");
 s = socket(PF_LOCAL, SOCK_DGRAM, 0);
 if (s == -1)
  errx(-1, "socket");
 memset(&un, 0, sizeof(un));
 un.sun_family = AF_LOCAL;
 unlink(socket_path);
 strcpy(un.sun_path, socket_path);
 if (bind(s, (struct sockaddr *)&un, sizeof(un)) == -1)
  errx(-1, "bind");
 pid = fork();
 if (pid == -1)
  errx(-1, "fork");
 if (pid == 0) {
  int conn;
  char buf[] = "AAAAAAAAA";

  close(s);
  conn = socket(AF_LOCAL, SOCK_DGRAM, 0);
  if (conn == -1)
   errx(-1,"socket");
  if (sendto(conn, buf, sizeof(buf), 0, (struct sockaddr *)&un,
      sizeof(un)) != sizeof(buf))
   errx(-1,"sendto");
  close(conn);
  _exit(0);
 }

 sleep(5);


 if (recvfrom(s, (void *)-1, 1, 0, ((void*)0), ((void*)0)) != -1)
  errx(-1,"recvfrom succeeded when failure expected");

 (void)signal(SIGALRM, handle_sigalrm);
 if (setjmp(myjmpbuf) == 0) {




  alarm(5);
  (void)recvfrom(s, (void *)-1, 1, 0, ((void*)0), ((void*)0));
 }



 return (0);
}
