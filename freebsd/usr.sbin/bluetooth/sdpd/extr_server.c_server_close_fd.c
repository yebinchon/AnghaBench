
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* server_p ;
typedef TYPE_2__* provider_p ;
typedef size_t int32_t ;
struct TYPE_11__ {int * rsp; int valid; } ;
struct TYPE_10__ {size_t fd; } ;
struct TYPE_9__ {size_t maxfd; TYPE_8__* fdidx; int fdset; } ;


 int FD_CLR (size_t,int *) ;
 int FD_ISSET (size_t,int *) ;
 int assert (int ) ;
 int close (size_t) ;
 int free (int *) ;
 int memset (TYPE_8__*,int ,int) ;
 TYPE_2__* provider_get_first () ;
 TYPE_2__* provider_get_next (TYPE_2__*) ;
 int provider_unregister (TYPE_2__*) ;

__attribute__((used)) static void
server_close_fd(server_p srv, int32_t fd)
{
 provider_p provider = ((void*)0), provider_next = ((void*)0);

 assert(FD_ISSET(fd, &srv->fdset));
 assert(srv->fdidx[fd].valid);

 close(fd);

 FD_CLR(fd, &srv->fdset);
 if (fd == srv->maxfd)
  srv->maxfd --;

 if (srv->fdidx[fd].rsp != ((void*)0))
  free(srv->fdidx[fd].rsp);

 memset(&srv->fdidx[fd], 0, sizeof(srv->fdidx[fd]));

 for (provider = provider_get_first();
      provider != ((void*)0);
      provider = provider_next) {
  provider_next = provider_get_next(provider);

  if (provider->fd == fd)
   provider_unregister(provider);
 }
}
