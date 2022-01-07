
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* name; struct physical* arg; int func; int load; } ;
struct ttydevice {TYPE_2__ Timer; } ;
struct TYPE_4__ {int name; } ;
struct physical {TYPE_1__ link; int handler; } ;


 int LogDEBUG ;
 int SECTICKS ;
 struct ttydevice* device2tty (int ) ;
 int log_Printf (int ,char*,int ,int ) ;
 int timer_Start (TYPE_2__*) ;
 int timer_Stop (TYPE_2__*) ;
 int tty_Timeout ;

__attribute__((used)) static void
tty_StartTimer(struct physical *p)
{
  struct ttydevice *dev = device2tty(p->handler);

  timer_Stop(&dev->Timer);
  dev->Timer.load = SECTICKS;
  dev->Timer.func = tty_Timeout;
  dev->Timer.name = "tty CD";
  dev->Timer.arg = p;
  log_Printf(LogDEBUG, "%s: Using tty_Timeout [%p]\n",
             p->link.name, tty_Timeout);
  timer_Start(&dev->Timer);
}
