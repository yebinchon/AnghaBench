
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdceem_softc {int dummy; } ;
typedef int device_t ;


 int CDCEEM_DEBUG (struct cdceem_softc*,char*) ;
 struct cdceem_softc* device_get_softc (int ) ;

__attribute__((used)) static int
cdceem_suspend(device_t dev)
{
 struct cdceem_softc *sc = device_get_softc(dev);

 CDCEEM_DEBUG(sc, "go");
 return (0);
}
