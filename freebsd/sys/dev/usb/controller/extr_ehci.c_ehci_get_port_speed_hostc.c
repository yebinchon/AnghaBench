
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct ehci_softc {int dummy; } ;


 int EHCI_HOSTC (int ) ;
 int EHCI_HOSTC_PSPD_MASK ;
 int EHCI_HOSTC_PSPD_SHIFT ;
 int EHCI_PORT_SPEED_HIGH ;
 int EHCI_PORT_SPEED_LOW ;
 int EOREAD4 (struct ehci_softc*,int ) ;
 int UPS_HIGH_SPEED ;
 int UPS_LOW_SPEED ;

uint16_t
ehci_get_port_speed_hostc(struct ehci_softc *sc, uint16_t index)
{
 uint32_t v;

 v = EOREAD4(sc, EHCI_HOSTC(index));
 v = (v >> EHCI_HOSTC_PSPD_SHIFT) & EHCI_HOSTC_PSPD_MASK;

 if (v == EHCI_PORT_SPEED_HIGH)
  return (UPS_HIGH_SPEED);
 if (v == EHCI_PORT_SPEED_LOW)
  return (UPS_LOW_SPEED);
 return (0);
}
