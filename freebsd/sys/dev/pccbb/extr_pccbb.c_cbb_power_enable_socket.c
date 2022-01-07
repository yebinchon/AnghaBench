
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbb_softc {int flags; } ;
typedef int device_t ;


 int CBB_16BIT_CARD ;
 int cbb_cardbus_power_enable_socket (int ,int ) ;
 int cbb_pcic_power_enable_socket (int ,int ) ;
 struct cbb_softc* device_get_softc (int ) ;

int
cbb_power_enable_socket(device_t brdev, device_t child)
{
 struct cbb_softc *sc = device_get_softc(brdev);

 if (sc->flags & CBB_16BIT_CARD)
  return (cbb_pcic_power_enable_socket(brdev, child));
 return (cbb_cardbus_power_enable_socket(brdev, child));
}
