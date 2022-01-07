
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sun_path; } ;
struct TYPE_4__ {int * dl; } ;
struct mpserver {int fd; TYPE_2__ socket; TYPE_1__ send; } ;


 int ID0unlink (int ) ;
 int LogERROR ;
 int bundle_SendDatalink (int *,int,TYPE_2__*) ;
 int close (int) ;
 int errno ;
 int log_Printf (int ,char*,int ,int ) ;
 int memset (TYPE_2__*,char,int) ;
 int strerror (int ) ;

void
mpserver_Close(struct mpserver *s)
{
  if (s->send.dl != ((void*)0)) {
    bundle_SendDatalink(s->send.dl, s->fd, &s->socket);
    s->send.dl = ((void*)0);
    s->fd = -1;
  } else if (s->fd >= 0) {
    close(s->fd);
    if (ID0unlink(s->socket.sun_path) == -1)
      log_Printf(LogERROR, "%s: Failed to remove: %s\n", s->socket.sun_path,
                strerror(errno));
    memset(&s->socket, '\0', sizeof s->socket);
    s->fd = -1;
  }
}
