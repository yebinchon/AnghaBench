
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {struct agtiapi_softc* si_drv1; } ;
struct agtiapi_softc {int my_dev; } ;


 int AGTIAPI_PRINTK (char*,...) ;

int agtiapi_open( struct cdev *dev, int oflags, int devtype, struct thread *td )
{
  struct agtiapi_softc *sc;

  sc = dev->si_drv1;
  AGTIAPI_PRINTK("agtiapi_open\n");
  AGTIAPI_PRINTK("Opened successfully. sc->my_dev %p\n", sc->my_dev);
  return( 0 );
}
