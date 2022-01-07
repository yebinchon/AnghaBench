
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {scalar_t__ uio_resid; } ;
struct pbio_softc {TYPE_1__* pd; } ;
struct cdev {int dummy; } ;
typedef int caddr_t ;
struct TYPE_2__ {char* buff; scalar_t__ opace; } ;


 int ENODEV ;
 int PBIOPRI ;
 int PBIO_BUFSIZ ;
 int PBIO_PORTA ;
 int PBIO_PORTB ;
 int PBIO_PORTC ;
 int PORT (struct cdev*) ;
 int UNIT (struct cdev*) ;
 int min (scalar_t__,int ) ;
 char pbinb (struct pbio_softc*,int ) ;
 struct pbio_softc* pbio_addr (int) ;
 int pboutb (struct pbio_softc*,int ,char) ;
 int tsleep (int ,int ,char*,scalar_t__) ;
 int uiomove (char*,int,struct uio*) ;

__attribute__((used)) static int
pbiowrite(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct pbio_softc *scp;
 int i, port, ret, towrite, unit;
 char val, oval;

 unit = UNIT(dev);
 port = PORT(dev);
 scp = pbio_addr(unit);
 if (scp == ((void*)0))
  return (ENODEV);

 while (uio->uio_resid > 0) {
  towrite = min(uio->uio_resid, PBIO_BUFSIZ);
  if ((ret = uiomove(scp->pd[port].buff, towrite, uio)) != 0)
   return (ret);
  for (i = 0; i < towrite; i++) {
   val = scp->pd[port].buff[i];
   switch (port) {
   case 0:
    pboutb(scp, PBIO_PORTA, val);
    break;
   case 1:
    pboutb(scp, PBIO_PORTB, val);
    break;
   case 2:
    oval = pbinb(scp, PBIO_PORTC);
    oval &= 0xf;
    val <<= 4;
    pboutb(scp, PBIO_PORTC, val | oval);
    break;
   case 3:
    oval = pbinb(scp, PBIO_PORTC);
    oval &= 0xf0;
    val &= 0xf;
    pboutb(scp, PBIO_PORTC, oval | val);
    break;
   }
   if (scp->pd[port].opace)
    tsleep((caddr_t)&(scp->pd[port].opace),
     PBIOPRI, "pbioop",
     scp->pd[port].opace);
  }
 }
 return (0);
}
