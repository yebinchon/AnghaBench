
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct octopci_softc {int sc_domain; } ;
typedef int device_t ;


 int OCTEON_FEATURE_PCIE ;
 int cvmx_pcie_config_read16 (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int cvmx_pcie_config_read32 (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int cvmx_pcie_config_read8 (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int cvmx_read64_uint16 (int ) ;
 int cvmx_read64_uint32 (int ) ;
 int cvmx_read64_uint8 (int ) ;
 struct octopci_softc* device_get_softc (int ) ;
 int le16toh (int ) ;
 int le32toh (int ) ;
 scalar_t__ octeon_has_feature (int ) ;
 int octopci_cs_addr (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static uint32_t
octopci_read_config(device_t dev, u_int bus, u_int slot, u_int func, u_int reg,
    int bytes)
{
 struct octopci_softc *sc;
 uint64_t addr;
 uint32_t data;

 sc = device_get_softc(dev);

 if (octeon_has_feature(OCTEON_FEATURE_PCIE)) {
  if (bus == 0 && slot == 0 && func == 0)
   return ((uint32_t)-1);

  switch (bytes) {
  case 4:
   return (cvmx_pcie_config_read32(sc->sc_domain, bus, slot, func, reg));
  case 2:
   return (cvmx_pcie_config_read16(sc->sc_domain, bus, slot, func, reg));
  case 1:
   return (cvmx_pcie_config_read8(sc->sc_domain, bus, slot, func, reg));
  default:
   return ((uint32_t)-1);
  }
 }

 addr = octopci_cs_addr(bus, slot, func, reg);

 switch (bytes) {
 case 4:
  data = le32toh(cvmx_read64_uint32(addr));
  return (data);
 case 2:
  data = le16toh(cvmx_read64_uint16(addr));
  return (data);
 case 1:
  data = cvmx_read64_uint8(addr);
  return (data);
 default:
  return ((uint32_t)-1);
 }
}
