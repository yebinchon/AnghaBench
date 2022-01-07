
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttydevice {int dummy; } ;
struct physical {int handler; } ;


 struct ttydevice* device2tty (int ) ;
 int free (struct ttydevice*) ;
 int tty_Offline (struct physical*) ;

__attribute__((used)) static void
tty_Free(struct physical *p)
{
  struct ttydevice *dev = device2tty(p->handler);

  tty_Offline(p);
  free(dev);
}
