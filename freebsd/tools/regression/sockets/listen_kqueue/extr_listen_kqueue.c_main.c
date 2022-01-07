
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct kevent {uintptr_t ident; } ;
typedef int socklen_t ;
typedef int opt ;
typedef int addr ;


 int AF_INET ;
 int EVFILT_READ ;
 int EVFILT_WRITE ;
 int EV_ADD ;
 int EV_CLEAR ;
 int EV_SET (struct kevent*,int,int ,int,int ,int ,int *) ;
 int FIONBIO ;
 int PF_INET ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_NOSIGPIPE ;
 int SO_REUSEADDR ;
 int accept (uintptr_t,struct sockaddr*,int *) ;
 int bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 int err (int,char*) ;
 int fork () ;
 int htons (int) ;
 int ioctl (int,int ,int*) ;
 int kevent (int,struct kevent*,int,struct kevent*,int,int *) ;
 int kqueue () ;
 int listen (int,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int printf (char*) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;

int
main()
{
 struct sockaddr_in addr;
 struct kevent ev[2];
 socklen_t socklen;
 int kq, sock, opt, pid, nev, fd;

 if ((kq = kqueue()) == -1)
  err(1, "kqueue");

 if ((sock = socket(PF_INET, SOCK_STREAM, 0)) == -1)
  err(1, "socket");

 EV_SET(&ev[0], sock, EVFILT_READ, EV_ADD | EV_CLEAR, 0, 0, ((void*)0));
 EV_SET(&ev[1], sock, EVFILT_WRITE, EV_ADD | EV_CLEAR, 0, 0, ((void*)0));

 opt = 1;
 if (setsockopt(sock, SOL_SOCKET, SO_NOSIGPIPE, &opt, sizeof(opt)) == -1)
  err(1, "setsockopt");

 if (kevent(kq, ev, 2, ((void*)0), 0, ((void*)0)) == -1)
     err(1, "kevent");

 if (setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt)) == -1)
  err(1, "setsockopt");

 memset(&addr, 0, sizeof(addr));
 addr.sin_family = AF_INET;
 addr.sin_port = htons(10000);

 if (bind(sock, (struct sockaddr *)&addr, sizeof(addr)) == -1)
  err(1, "bind");
 if (listen(sock, 0x80) == -1)
  err(1, "listen");

 if (ioctl(sock, FIONBIO, &opt) == -1)
  err(1, "ioctl(FIONBIO)");

 if (kevent(kq, ev, 2, ((void*)0), 0, ((void*)0)) == -1)
  err(1, "kevent");

 pid = fork();
 if (pid == -1)
  err(1, "fork");
 if (pid == 0) {
  if (close(sock) == -1)
   err(1, "close");
  if ((sock = socket(PF_INET, SOCK_STREAM, 0)) == -1)
   err(1, "socket");
  if (connect(sock, (struct sockaddr *)&addr, sizeof(addr)) == -1)
   err(1, "connect");
 } else {
  nev = kevent(kq, ((void*)0), 0, ev, 2, ((void*)0));
  if (nev < 1)
   err(1, "kevent");
  for (int i = 0; i < nev; ++i) {
   if (ev[i].ident == (uintptr_t )sock) {
    fd = accept(ev[i].ident,
        (struct sockaddr *)&addr, &socklen);
    if (fd == -1)
     err(1, "accept");
    printf("OK\n");
   }
  }
 }
}
