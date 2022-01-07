
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int wfdset ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int rfdset ;
typedef scalar_t__ int32_t ;
typedef int fd_set ;
typedef TYPE_1__* bthid_server_p ;
struct TYPE_6__ {scalar_t__ maxfd; scalar_t__ ctrl; scalar_t__ intr; int wfdset; int rfdset; } ;


 scalar_t__ EINTR ;
 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 int LOG_ERR ;
 int assert (int ) ;
 int client_connect (TYPE_1__*,scalar_t__) ;
 scalar_t__ errno ;
 int memcpy (int *,int *,int) ;
 scalar_t__ select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int server_accept (TYPE_1__*,scalar_t__) ;
 int server_process (TYPE_1__*,scalar_t__) ;
 int strerror (scalar_t__) ;
 int syslog (int ,char*,scalar_t__,int *,int *,int ,scalar_t__) ;

int32_t
server_do(bthid_server_p srv)
{
 struct timeval tv;
 fd_set rfdset, wfdset;
 int32_t n, fd;

 assert(srv != ((void*)0));

 tv.tv_sec = 1;
 tv.tv_usec = 0;


 memcpy(&rfdset, &srv->rfdset, sizeof(rfdset));
 memcpy(&wfdset, &srv->wfdset, sizeof(wfdset));

 n = select(srv->maxfd + 1, &rfdset, &wfdset, ((void*)0), &tv);
 if (n < 0) {
  if (errno == EINTR)
   return (0);

  syslog(LOG_ERR, "Could not select(%d, %p, %p). %s (%d)",
   srv->maxfd + 1, &rfdset, &wfdset, strerror(errno), errno);

  return (-1);
 }


 for (fd = 0; fd < srv->maxfd + 1 && n > 0; fd ++) {
  if (FD_ISSET(fd, &rfdset)) {
   n --;

   if (fd == srv->ctrl || fd == srv->intr)
    server_accept(srv, fd);
   else
    server_process(srv, fd);
  } else if (FD_ISSET(fd, &wfdset)) {
   n --;

   client_connect(srv, fd);
  }
 }

 return (0);
}
