
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* server_p ;
struct TYPE_7__ {scalar_t__ valid; } ;
struct TYPE_6__ {int maxfd; TYPE_5__* fdidx; TYPE_5__* req; } ;


 int assert (int ) ;
 int free (TYPE_5__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int server_close_fd (TYPE_1__*,int) ;

void
server_shutdown(server_p srv)
{
 int fd;

 assert(srv != ((void*)0));

 for (fd = 0; fd < srv->maxfd + 1; fd ++)
  if (srv->fdidx[fd].valid)
   server_close_fd(srv, fd);

 free(srv->req);
 free(srv->fdidx);

 memset(srv, 0, sizeof(*srv));
}
