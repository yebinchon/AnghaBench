
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {struct agtiapi_softc* si_drv1; } ;
struct agtiapi_softc {int my_dev; } ;


 int AGTIAPI_PRINTK (char*,...) ;

int agtiapi_close( struct cdev *dev, int fflag, int devtype, struct thread *td )
{
  struct agtiapi_softc *sc;

  sc = dev->si_drv1;
  AGTIAPI_PRINTK("agtiapi_close\n");
  AGTIAPI_PRINTK("Closed. sc->my_dev %p\n", sc->my_dev);
  return( 0 );
}
