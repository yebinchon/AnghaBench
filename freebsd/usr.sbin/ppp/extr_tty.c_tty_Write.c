
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttydevice {int hook; } ;
struct physical {int fd; int handler; } ;
typedef int ssize_t ;


 int NgSendData (int ,int ,void const*,size_t) ;
 struct ttydevice* device2tty (int ) ;
 scalar_t__ isngtty (struct ttydevice*) ;
 int write (int ,void const*,size_t) ;

__attribute__((used)) static ssize_t
tty_Write(struct physical *p, const void *v, size_t n)
{
  struct ttydevice *dev = device2tty(p->handler);

  if (isngtty(dev))
    return NgSendData(p->fd, dev->hook, v, n) == -1 ? -1 : (ssize_t)n;
  else
    return write(p->fd, v, n);
}
