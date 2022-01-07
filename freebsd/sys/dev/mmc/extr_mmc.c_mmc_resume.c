
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_softc {int dummy; } ;
typedef int device_t ;


 int bus_generic_resume (int ) ;
 struct mmc_softc* device_get_softc (int ) ;
 int mmc_scan (struct mmc_softc*) ;

__attribute__((used)) static int
mmc_resume(device_t dev)
{
 struct mmc_softc *sc = device_get_softc(dev);

 mmc_scan(sc);
 return (bus_generic_resume(dev));
}
