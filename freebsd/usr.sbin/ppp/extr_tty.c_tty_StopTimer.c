
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttydevice {int Timer; } ;
struct physical {int handler; } ;


 struct ttydevice* device2tty (int ) ;
 int timer_Stop (int *) ;

__attribute__((used)) static void
tty_StopTimer(struct physical *p)
{
  struct ttydevice *dev = device2tty(p->handler);

  timer_Stop(&dev->Timer);
}
