
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physical {int fd; int handler; } ;
struct etherdevice {int hook; } ;
typedef int ssize_t ;


 int NgSendData (int ,int ,void const*,size_t) ;
 struct etherdevice* device2ether (int ) ;

__attribute__((used)) static ssize_t
ether_Write(struct physical *p, const void *v, size_t n)
{
  struct etherdevice *dev = device2ether(p->handler);

  return NgSendData(p->fd, dev->hook, v, n) == -1 ? -1 : (ssize_t)n;
}
