
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct pbio_softc {int dummy; } ;
struct cdev {int dummy; } ;


 int ENODEV ;
 int UNIT (struct cdev*) ;
 struct pbio_softc* pbio_addr (int) ;

__attribute__((used)) static int
pbioclose(struct cdev *dev, int fflag, int devtype, struct thread *td)
{
 struct pbio_softc *scp;
 int unit;

 unit = UNIT(dev);
 scp = pbio_addr(unit);
 if (scp == ((void*)0))
  return (ENODEV);

 return (0);
}
