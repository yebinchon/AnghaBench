
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adm6996fc_softc {int dummy; } ;
typedef int device_t ;


 int ADM6996FC_LOCK_ASSERT (struct adm6996fc_softc*,int ) ;
 int ADM6996FC_UNLOCK (struct adm6996fc_softc*) ;
 int MA_OWNED ;
 struct adm6996fc_softc* device_get_softc (int ) ;

__attribute__((used)) static void
adm6996fc_unlock(device_t dev)
{
 struct adm6996fc_softc *sc;

 sc = device_get_softc(dev);

 ADM6996FC_LOCK_ASSERT(sc, MA_OWNED);
 ADM6996FC_UNLOCK(sc);
}
