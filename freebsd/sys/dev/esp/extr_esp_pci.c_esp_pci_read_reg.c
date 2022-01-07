
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ncr53c9x_softc {int dummy; } ;
struct esp_pci_softc {int dummy; } ;


 int READ_ESPREG (struct esp_pci_softc*,int) ;

__attribute__((used)) static uint8_t
esp_pci_read_reg(struct ncr53c9x_softc *sc, int reg)
{
 struct esp_pci_softc *esc = (struct esp_pci_softc *)sc;

 return (READ_ESPREG(esc, reg));
}
