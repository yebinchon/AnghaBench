
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct physical {int fd; TYPE_1__* dl; int handler; } ;
struct ngdevice {int hook; } ;
typedef int ssize_t ;
struct TYPE_2__ {int state; } ;




 int NgSendData (int ,int ,void const*,size_t) ;
 struct ngdevice* device2ng (int ) ;
 int ng_MessageOut (struct ngdevice*,void const*) ;

__attribute__((used)) static ssize_t
ng_Write(struct physical *p, const void *v, size_t n)
{
  struct ngdevice *dev = device2ng(p->handler);

  switch (p->dl->state) {
    case 129:
    case 128:
      return ng_MessageOut(dev, v) ? (ssize_t)n : -1;
  }
  return NgSendData(p->fd, dev->hook, v, n) == -1 ? -1 : (ssize_t)n;
}
