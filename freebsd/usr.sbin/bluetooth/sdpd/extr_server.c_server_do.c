
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* server_p ;
typedef scalar_t__ int32_t ;
typedef int fdset ;
typedef int fd_set ;
struct TYPE_8__ {scalar_t__ maxfd; TYPE_1__* fdidx; int fdset; } ;
struct TYPE_7__ {scalar_t__ server; int valid; } ;


 scalar_t__ EINTR ;
 int FD_ISSET (scalar_t__,int *) ;
 int assert (int ) ;
 scalar_t__ errno ;
 int log_err (char*,scalar_t__,int *,int ,scalar_t__) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ select (scalar_t__,int *,int *,int *,int *) ;
 int server_accept_client (TYPE_2__*,scalar_t__) ;
 int server_close_fd (TYPE_2__*,scalar_t__) ;
 scalar_t__ server_process_request (TYPE_2__*,scalar_t__) ;
 int strerror (scalar_t__) ;

int32_t
server_do(server_p srv)
{
 fd_set fdset;
 int32_t n, fd;

 assert(srv != ((void*)0));


 memcpy(&fdset, &srv->fdset, sizeof(fdset));
 n = select(srv->maxfd + 1, &fdset, ((void*)0), ((void*)0), ((void*)0));
 if (n < 0) {
  if (errno == EINTR)
   return (0);

  log_err("Could not select(%d, %p). %s (%d)",
   srv->maxfd + 1, &fdset, strerror(errno), errno);

  return (-1);
 }


 for (fd = 0; fd < srv->maxfd + 1 && n > 0; fd ++) {
  if (!FD_ISSET(fd, &fdset))
   continue;

  assert(srv->fdidx[fd].valid);
  n --;

  if (srv->fdidx[fd].server)
   server_accept_client(srv, fd);
  else if (server_process_request(srv, fd) != 0)
   server_close_fd(srv, fd);
 }

 return (0);

}
