
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct ehci_softc {int dummy; } ;


 int EHCI_PORTSC (int ) ;
 int EHCI_PORTSC_PSPD_MASK ;
 int EHCI_PORTSC_PSPD_SHIFT ;
 int EHCI_PORT_SPEED_HIGH ;
 int EHCI_PORT_SPEED_LOW ;
 int EOREAD4 (struct ehci_softc*,int ) ;
 int UPS_HIGH_SPEED ;
 int UPS_LOW_SPEED ;

uint16_t
ehci_get_port_speed_portsc(struct ehci_softc *sc, uint16_t index)
{
 uint32_t v;

 v = EOREAD4(sc, EHCI_PORTSC(index));
 v = (v >> EHCI_PORTSC_PSPD_SHIFT) & EHCI_PORTSC_PSPD_MASK;

 if (v == EHCI_PORT_SPEED_HIGH)
  return (UPS_HIGH_SPEED);
 if (v == EHCI_PORT_SPEED_LOW)
  return (UPS_LOW_SPEED);
 return (0);
}
