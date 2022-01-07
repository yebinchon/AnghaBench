
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int fd_set ;


 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int TIMEOUT ;
 int accept (int,struct sockaddr*,int *) ;
 scalar_t__ close (int) ;
 int fcntl (int,int ,int) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int uc_dbgmsg (char*) ;
 int uc_logmsg (char*) ;
 int uc_logmsgx (char*) ;

int
uc_socket_accept(int listenfd)
{
 fd_set rset;
 struct timeval tv;
 int fd, rv, val;

 uc_dbgmsg("accept");

 FD_ZERO(&rset);
 FD_SET(listenfd, &rset);
 tv.tv_sec = TIMEOUT;
 tv.tv_usec = 0;
 rv = select(listenfd + 1, &rset, (fd_set *)((void*)0), (fd_set *)((void*)0), &tv);
 if (rv < 0) {
  uc_logmsg("socket_accept: select");
  return (-1);
 }
 if (rv == 0) {
  uc_logmsgx("socket_accept: select timeout");
  return (-1);
 }

 fd = accept(listenfd, (struct sockaddr *)((void*)0), (socklen_t *)((void*)0));
 if (fd < 0) {
  uc_logmsg("socket_accept: accept");
  return (-1);
 }

 val = fcntl(fd, F_GETFL, 0);
 if (val < 0) {
  uc_logmsg("socket_accept: fcntl(F_GETFL)");
  goto failed;
 }
 if (fcntl(fd, F_SETFL, val & ~O_NONBLOCK) < 0) {
  uc_logmsg("socket_accept: fcntl(F_SETFL)");
  goto failed;
 }

 return (fd);

failed:
 if (close(fd) < 0)
  uc_logmsg("socket_accept: close");
 return (-1);
}
