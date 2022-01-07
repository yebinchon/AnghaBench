
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdtemp_softc {int sc_flags; int sc_offset; } ;
typedef int int32_t ;
typedef int device_t ;
typedef int amdsensor_t ;


 int AMDTEMP_FLAG_ALT_OFFSET ;
 int AMDTEMP_FLAG_CS_SWAP ;
 int AMDTEMP_FLAG_CT_10BIT ;
 int AMDTEMP_THERMTP_STAT ;
 int AMDTEMP_TTSR_SELCORE ;
 int AMDTEMP_TTSR_SELSENSOR ;
 scalar_t__ AMDTEMP_ZERO_C_TO_K ;






 struct amdtemp_softc* device_get_softc (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int32_t
amdtemp_gettemp0f(device_t dev, amdsensor_t sensor)
{
 struct amdtemp_softc *sc = device_get_softc(dev);
 uint32_t mask, offset, temp;


 temp = pci_read_config(dev, AMDTEMP_THERMTP_STAT, 1);
 temp &= ~(AMDTEMP_TTSR_SELCORE | AMDTEMP_TTSR_SELSENSOR);
 switch (sensor) {
 case 131:
  temp |= AMDTEMP_TTSR_SELSENSOR;

 case 132:
 case 133:
  if ((sc->sc_flags & AMDTEMP_FLAG_CS_SWAP) != 0)
   temp |= AMDTEMP_TTSR_SELCORE;
  break;
 case 128:
  temp |= AMDTEMP_TTSR_SELSENSOR;

 case 129:
 case 130:
  if ((sc->sc_flags & AMDTEMP_FLAG_CS_SWAP) == 0)
   temp |= AMDTEMP_TTSR_SELCORE;
  break;
 }
 pci_write_config(dev, AMDTEMP_THERMTP_STAT, temp, 1);

 mask = (sc->sc_flags & AMDTEMP_FLAG_CT_10BIT) != 0 ? 0x3ff : 0x3fc;
 offset = (sc->sc_flags & AMDTEMP_FLAG_ALT_OFFSET) != 0 ? 28 : 49;
 temp = pci_read_config(dev, AMDTEMP_THERMTP_STAT, 4);
 temp = ((temp >> 14) & mask) * 5 / 2;
 temp += AMDTEMP_ZERO_C_TO_K + (sc->sc_offset - offset) * 10;

 return (temp);
}
