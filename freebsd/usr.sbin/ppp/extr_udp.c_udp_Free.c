
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udpdevice {int dummy; } ;
struct physical {int handler; } ;


 struct udpdevice* device2udp (int ) ;
 int free (struct udpdevice*) ;

__attribute__((used)) static void
udp_Free(struct physical *p)
{
  struct udpdevice *dev = device2udp(p->handler);

  free(dev);
}
