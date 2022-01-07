
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pbio_softc {TYPE_1__* pd; } ;
typedef int caddr_t ;
struct TYPE_2__ {char oldval; int ipace; scalar_t__ diff; } ;


 int EINTR ;
 int PBIOPRI ;
 int PBIO_PORTA ;
 int PBIO_PORTB ;
 int PBIO_PORTC ;
 int max (int,int ) ;
 int pbinb (struct pbio_softc*,int ) ;
 int tsleep (int ,int ,char*,int ) ;

__attribute__((used)) static int
portval(int port, struct pbio_softc *scp, char *val)
{
 int err;

 for (;;) {
  switch (port) {
  case 0:
   *val = pbinb(scp, PBIO_PORTA);
   break;
  case 1:
   *val = pbinb(scp, PBIO_PORTB);
   break;
  case 2:
   *val = (pbinb(scp, PBIO_PORTC) >> 4) & 0xf;
   break;
  case 3:
   *val = pbinb(scp, PBIO_PORTC) & 0xf;
   break;
  default:
   *val = 0;
   break;
  }
  if (scp->pd[port].diff) {
   if (*val != scp->pd[port].oldval) {
    scp->pd[port].oldval = *val;
    return (0);
   }
   err = tsleep((caddr_t)&(scp->pd[port].diff), PBIOPRI,
         "pbiopl", max(1, scp->pd[port].ipace));
   if (err == EINTR)
    return (EINTR);
  } else
   return (0);
 }
}
