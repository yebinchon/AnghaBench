
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct pbio_softc {TYPE_1__* pd; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int diff; int ipace; int opace; } ;


 int ENODEV ;
 int ENXIO ;






 int PORT (struct cdev*) ;
 int UNIT (struct cdev*) ;
 struct pbio_softc* pbio_addr (int) ;

__attribute__((used)) static int
pbioioctl (struct cdev *dev, u_long cmd, caddr_t data, int flag,
    struct thread *td)
{
 struct pbio_softc *scp;
 int port, unit;

 unit = UNIT(dev);
 port = PORT(dev);
 scp = pbio_addr(unit);
 if (scp == ((void*)0))
  return (ENODEV);
 switch (cmd) {
 case 130:
  scp->pd[port].diff = *(int *)data;
  break;
 case 129:
  scp->pd[port].ipace = *(int *)data;
  break;
 case 128:
  scp->pd[port].opace = *(int *)data;
  break;
 case 133:
  *(int *)data = scp->pd[port].diff;
  break;
 case 132:
  *(int *)data = scp->pd[port].ipace;
  break;
 case 131:
  *(int *)data = scp->pd[port].opace;
  break;
 default:
  return ENXIO;
 }
 return (0);
}
