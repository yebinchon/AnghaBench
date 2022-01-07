
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event {int fd; short flags; void (* cb ) (int,short,void*) ;void* cbarg; } ;



void
__event_set(struct event *ev, int fd, short flags,
 void (*cb)(int, short, void *), void *cbarg)
{
 ev->fd = fd;
 ev->flags = flags;
 ev->cb = cb;
 ev->cbarg = cbarg;
}
