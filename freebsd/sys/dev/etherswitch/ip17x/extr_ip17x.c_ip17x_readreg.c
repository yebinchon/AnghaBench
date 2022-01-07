
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip17x_softc {int dummy; } ;
typedef int device_t ;


 int IP17X_LOCK_ASSERT (struct ip17x_softc*,int ) ;
 int MA_OWNED ;
 struct ip17x_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ip17x_readreg(device_t dev, int addr)
{
 struct ip17x_softc *sc;

 sc = device_get_softc(dev);
 IP17X_LOCK_ASSERT(sc, MA_OWNED);


 return (0);
}
