
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pbio_softc {int iomode; } ;
struct cdev {int dummy; } ;


 int EACCES ;
 int ENODEV ;
 int FREAD ;
 int FWRITE ;
 int PBIO_CFG ;
 int PORT (struct cdev*) ;
 int UNIT (struct cdev*) ;
 struct pbio_softc* pbio_addr (int) ;
 int pboutb (struct pbio_softc*,int ,int) ;

__attribute__((used)) static int
pbioopen(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 struct pbio_softc *scp;
 int ocfg, port, unit;
 int portbit;

 unit = UNIT(dev);
 port = PORT(dev);
 scp = pbio_addr(unit);
 if (scp == ((void*)0))
  return (ENODEV);

 switch (port) {
 case 0: portbit = 0x10; break;
 case 1: portbit = 0x02; break;
 case 2: portbit = 0x08; break;
 case 3: portbit = 0x01; break;
 default: return (ENODEV);
 }
 ocfg = scp->iomode;

 if (oflags & FWRITE)

  pboutb(scp, PBIO_CFG, scp->iomode = (ocfg & (~portbit)));
 else if (oflags & FREAD)

  pboutb(scp, PBIO_CFG, scp->iomode = (ocfg | portbit));
 else
  return (EACCES);

 return (0);
}
