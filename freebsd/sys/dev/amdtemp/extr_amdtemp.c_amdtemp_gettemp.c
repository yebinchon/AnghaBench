
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdtemp_softc {int sc_offset; } ;
typedef int int32_t ;
typedef int device_t ;
typedef int amdsensor_t ;


 int AMDTEMP_REPTMP_CTRL ;
 int amdtemp_decode_fam10h_to_16h (int ,int ) ;
 struct amdtemp_softc* device_get_softc (int ) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static int32_t
amdtemp_gettemp(device_t dev, amdsensor_t sensor)
{
 struct amdtemp_softc *sc = device_get_softc(dev);
 uint32_t temp;

 temp = pci_read_config(dev, AMDTEMP_REPTMP_CTRL, 4);
 return (amdtemp_decode_fam10h_to_16h(sc->sc_offset, temp));
}
