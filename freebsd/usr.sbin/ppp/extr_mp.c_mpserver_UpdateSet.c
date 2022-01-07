
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* dl; } ;
struct mpserver {int fd; TYPE_2__ send; int socket; } ;
struct fdescriptor {int dummy; } ;
typedef int fd_set ;
struct TYPE_7__ {TYPE_1__* physical; } ;
struct TYPE_5__ {int out; int link; } ;


 int FD_SET (int,int *) ;
 int LogTIMER ;
 int bundle_SendDatalink (TYPE_3__*,int,int *) ;
 scalar_t__ datalink_RemoveFromSet (TYPE_3__*,int *,int *,int *) ;
 struct mpserver* descriptor2mpserver (struct fdescriptor*) ;
 int link_QueueLen (int *) ;
 int log_Printf (int ,char*,int) ;

__attribute__((used)) static int
mpserver_UpdateSet(struct fdescriptor *d, fd_set *r, fd_set *w, fd_set *e,
                   int *n)
{
  struct mpserver *s = descriptor2mpserver(d);
  int result;

  result = 0;
  if (s->send.dl != ((void*)0)) {

    if (!link_QueueLen(&s->send.dl->physical->link) &&
        !s->send.dl->physical->out) {

      result -= datalink_RemoveFromSet(s->send.dl, r, w, e);
      bundle_SendDatalink(s->send.dl, s->fd, &s->socket);
      s->send.dl = ((void*)0);
      s->fd = -1;
    } else

      result -= datalink_RemoveFromSet(s->send.dl, r, ((void*)0), ((void*)0));
  } else if (r && s->fd >= 0) {
    if (*n < s->fd + 1)
      *n = s->fd + 1;
    FD_SET(s->fd, r);
    log_Printf(LogTIMER, "mp: fdset(r) %d\n", s->fd);
    result++;
  }
  return result;
}
