
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td_desc {int byte_count; int count; int buflen; int buf; int fd; } ;
struct pollfd {int events; int revents; int fd; } ;


 int MSG_DONTWAIT ;
 int POLLIN ;
 int perror (char*) ;
 scalar_t__ poll (struct pollfd*,int,int) ;
 int recv (int ,int ,int ,int ) ;

__attribute__((used)) static void *
rx_body(void *data)
{
 struct td_desc *t = data;
 struct pollfd fds;
 int y;

 fds.fd = t->fd;
 fds.events = POLLIN;

 for (;;) {
  if (poll(&fds, 1, -1) < 0)
   perror("poll on thread");
  if (!(fds.revents & POLLIN))
   continue;
  for (;;) {
   y = recv(t->fd, t->buf, t->buflen, MSG_DONTWAIT);
   if (y < 0)
    break;
   t->count++;
   t->byte_count += y;
  }
 }
 return ((void*)0);
}
