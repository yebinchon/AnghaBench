
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ queued; } ;
struct TYPE_4__ {int fd; TYPE_1__ w; } ;
struct imsgev {int ev; int data; int * handler; int events; TYPE_2__ ibuf; } ;


 int EV_READ ;
 int EV_WRITE ;
 int event_add (int *,int *) ;
 int event_del (int *) ;
 int event_set (int *,int ,int ,int *,int ) ;
 int imsg_flush (TYPE_2__*) ;

void
imsg_event_add(struct imsgev *iev)
{
 if (iev->handler == ((void*)0)) {
  imsg_flush(&iev->ibuf);
  return;
 }

 iev->events = EV_READ;
 if (iev->ibuf.w.queued)
  iev->events |= EV_WRITE;

 event_del(&iev->ev);
 event_set(&iev->ev, iev->ibuf.fd, iev->events, iev->handler, iev->data);
 event_add(&iev->ev, ((void*)0));
}
