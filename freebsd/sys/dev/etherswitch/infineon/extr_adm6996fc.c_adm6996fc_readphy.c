
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adm6996fc_softc {int dummy; } ;
typedef int device_t ;


 int ADM6996FC_LOCK (struct adm6996fc_softc*) ;
 int ADM6996FC_LOCK_ASSERT (struct adm6996fc_softc*,int ) ;
 scalar_t__ ADM6996FC_PHY_C0 ;
 int ADM6996FC_PHY_SIZE ;
 int ADM6996FC_READREG (int ,scalar_t__) ;
 int ADM6996FC_UNLOCK (struct adm6996fc_softc*) ;
 int ENXIO ;
 int MA_NOTOWNED ;
 int device_get_parent (int ) ;
 struct adm6996fc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
adm6996fc_readphy(device_t dev, int phy, int reg)
{
 struct adm6996fc_softc *sc;
 int data;

 sc = device_get_softc(dev);
 ADM6996FC_LOCK_ASSERT(sc, MA_NOTOWNED);

 if (phy < 0 || phy >= 32)
  return (ENXIO);
 if (reg < 0 || reg >= 32)
  return (ENXIO);

 ADM6996FC_LOCK(sc);
 data = ADM6996FC_READREG(device_get_parent(dev),
     (ADM6996FC_PHY_C0 + ADM6996FC_PHY_SIZE * phy) + reg);
 ADM6996FC_UNLOCK(sc);

 return (data);
}
