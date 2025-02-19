
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct TYPE_2__ {int phys_mid; int phys_hi; } ;
struct rtaspci_softc {int ex_write_pci_config; int write_pci_config; TYPE_1__ sc_pcir; scalar_t__ sc_extended_config; } ;
typedef int device_t ;


 struct rtaspci_softc* device_get_softc (int ) ;
 int rtas_call_method (int,int,int,int,int,int,...) ;

__attribute__((used)) static void
rtaspci_write_config(device_t dev, u_int bus, u_int slot, u_int func,
    u_int reg, uint32_t val, int width)
{
 struct rtaspci_softc *sc;
 uint32_t config_addr;
 int pcierror;

 sc = device_get_softc(dev);

 config_addr = ((bus & 0xff) << 16) | ((slot & 0x1f) << 11) |
     ((func & 0x7) << 8) | (reg & 0xff);
 if (sc->sc_extended_config)
  config_addr |= (reg & 0xf00) << 16;

 if (sc->ex_write_pci_config != -1)
  rtas_call_method(sc->ex_write_pci_config, 5, 1, config_addr,
      sc->sc_pcir.phys_hi, sc->sc_pcir.phys_mid,
      width, val, &pcierror);
 else
  rtas_call_method(sc->write_pci_config, 3, 1, config_addr,
      width, val, &pcierror);
}
