
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct pollfd {int fd; scalar_t__ revents; int events; } ;
struct msghdr {int dummy; } ;
typedef int fd_set ;
typedef int fd_mask ;


 int FD_SET (int,int *) ;
 int NFDBITS ;
 int POLLIN ;
 int err (int,char*) ;
 int free (int *) ;
 int howmany (int,int ) ;
 scalar_t__ malloc (int) ;
 int memset (int *,int ,int) ;
 scalar_t__ poll (struct pollfd*,int,int) ;
 int rcvsock ;
 int recvmsg (int ,struct msghdr*,int ) ;
 scalar_t__ select (int,int *,int *,int *,struct timeval*) ;
 int waittime ;

int
wait_for_reply(int sock, struct msghdr *mhdr)
{
 fd_set *fdsp;
 struct timeval wait;
 int cc = 0, fdsn;

 fdsn = howmany(sock + 1, NFDBITS) * sizeof(fd_mask);
 if ((fdsp = (fd_set *)malloc(fdsn)) == ((void*)0))
  err(1, "malloc");
 memset(fdsp, 0, fdsn);
 FD_SET(sock, fdsp);
 wait.tv_sec = waittime; wait.tv_usec = 0;

 if (select(sock+1, fdsp, (fd_set *)0, (fd_set *)0, &wait) > 0)
  cc = recvmsg(rcvsock, mhdr, 0);

 free(fdsp);
 return (cc);

}
