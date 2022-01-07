
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_4__ {scalar_t__ necessity; } ;
struct TYPE_5__ {TYPE_1__ cd; } ;
struct ttydevice {int mbits; scalar_t__ carrier_seconds; TYPE_3__ Timer; TYPE_2__ dev; } ;
struct physical {int handler; } ;


 int CARRIER_LOST ;
 int CARRIER_OK ;
 int CARRIER_PENDING ;
 scalar_t__ CD_NOTREQUIRED ;
 scalar_t__ Online (struct ttydevice*) ;
 scalar_t__ TIMER_STOPPED ;
 struct ttydevice* device2tty (int ) ;
 scalar_t__ physical_IsSync (struct physical*) ;
 int tty_StartTimer (struct physical*) ;

__attribute__((used)) static int
tty_AwaitCarrier(struct physical *p)
{
  struct ttydevice *dev = device2tty(p->handler);

  if (dev->dev.cd.necessity == CD_NOTREQUIRED || physical_IsSync(p))
    return CARRIER_OK;

  if (dev->mbits == -1) {
    if (dev->Timer.state == TIMER_STOPPED) {
      dev->carrier_seconds = 0;
      tty_StartTimer(p);
    }
    return CARRIER_PENDING;
  }

  return Online(dev) ? CARRIER_OK : CARRIER_LOST;
}
