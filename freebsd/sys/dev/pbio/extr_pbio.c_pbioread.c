
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {scalar_t__ uio_resid; } ;
struct pbio_softc {TYPE_1__* pd; } ;
struct cdev {int dummy; } ;
typedef int caddr_t ;
struct TYPE_2__ {char* buff; scalar_t__ ipace; int diff; } ;


 int ENODEV ;
 int PBIOPRI ;
 int PBIO_BUFSIZ ;
 int PORT (struct cdev*) ;
 int UNIT (struct cdev*) ;
 int min (scalar_t__,int ) ;
 struct pbio_softc* pbio_addr (int) ;
 int portval (int,struct pbio_softc*,char*) ;
 int tsleep (int ,int ,char*,scalar_t__) ;
 int uiomove (char*,int,struct uio*) ;

__attribute__((used)) static int
pbioread(struct cdev *dev, struct uio *uio, int ioflag)
{
 struct pbio_softc *scp;
 int err, i, port, ret, toread, unit;
 char val;

 unit = UNIT(dev);
 port = PORT(dev);
 scp = pbio_addr(unit);
 if (scp == ((void*)0))
  return (ENODEV);

 while (uio->uio_resid > 0) {
  toread = min(uio->uio_resid, PBIO_BUFSIZ);
  if ((ret = uiomove(scp->pd[port].buff, toread, uio)) != 0)
   return (ret);
  for (i = 0; i < toread; i++) {
   if ((err = portval(port, scp, &val)) != 0)
    return (err);
   scp->pd[port].buff[i] = val;
   if (!scp->pd[port].diff && scp->pd[port].ipace)
    tsleep((caddr_t)&(scp->pd[port].ipace), PBIOPRI,
     "pbioip", scp->pd[port].ipace);
  }
 }
 return 0;
}
