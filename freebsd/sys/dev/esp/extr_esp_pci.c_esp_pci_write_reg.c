
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ncr53c9x_softc {int dummy; } ;
struct esp_pci_softc {int dummy; } ;


 int WRITE_ESPREG (struct esp_pci_softc*,int,int ) ;

__attribute__((used)) static void
esp_pci_write_reg(struct ncr53c9x_softc *sc, int reg, uint8_t v)
{
 struct esp_pci_softc *esc = (struct esp_pci_softc *)sc;

 WRITE_ESPREG(esc, reg, v);
}
