
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_int ;
struct octopci_softc {int sc_domain; } ;
typedef int device_t ;


 int OCTEON_FEATURE_PCIE ;
 int cvmx_pcie_config_write16 (int ,int ,int ,int ,int ,int ) ;
 int cvmx_pcie_config_write32 (int ,int ,int ,int ,int ,int ) ;
 int cvmx_pcie_config_write8 (int ,int ,int ,int ,int ,int ) ;
 int cvmx_write64_uint16 (int ,int ) ;
 int cvmx_write64_uint32 (int ,int ) ;
 int cvmx_write64_uint8 (int ,int ) ;
 struct octopci_softc* device_get_softc (int ) ;
 int htole16 (int ) ;
 int htole32 (int ) ;
 scalar_t__ octeon_has_feature (int ) ;
 int octopci_cs_addr (int ,int ,int ,int ) ;

__attribute__((used)) static void
octopci_write_config(device_t dev, u_int bus, u_int slot, u_int func,
    u_int reg, uint32_t data, int bytes)
{
 struct octopci_softc *sc;
 uint64_t addr;

 sc = device_get_softc(dev);

 if (octeon_has_feature(OCTEON_FEATURE_PCIE)) {
  switch (bytes) {
  case 4:
   cvmx_pcie_config_write32(sc->sc_domain, bus, slot, func, reg, data);
   return;
  case 2:
   cvmx_pcie_config_write16(sc->sc_domain, bus, slot, func, reg, data);
   return;
  case 1:
   cvmx_pcie_config_write8(sc->sc_domain, bus, slot, func, reg, data);
   return;
  default:
   return;
  }
 }

 addr = octopci_cs_addr(bus, slot, func, reg);

 switch (bytes) {
 case 4:
  cvmx_write64_uint32(addr, htole32(data));
  return;
 case 2:
  cvmx_write64_uint16(addr, htole16(data));
  return;
 case 1:
  cvmx_write64_uint8(addr, data);
  return;
 default:
  return;
 }
}
