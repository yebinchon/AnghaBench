
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdtemp_softc {int sc_offset; int sc_smn; } ;
typedef int int32_t ;
typedef int device_t ;
typedef int amdsensor_t ;


 int AMDTEMP_15H_M60H_REPTMP_CTRL ;
 int KASSERT (int,char*) ;
 int amdsmn_read (int ,int ,int *) ;
 int amdtemp_decode_fam10h_to_16h (int ,int ) ;
 struct amdtemp_softc* device_get_softc (int ) ;

__attribute__((used)) static int32_t
amdtemp_gettemp15hm60h(device_t dev, amdsensor_t sensor)
{
 struct amdtemp_softc *sc = device_get_softc(dev);
 uint32_t val;
 int error;

 error = amdsmn_read(sc->sc_smn, AMDTEMP_15H_M60H_REPTMP_CTRL, &val);
 KASSERT(error == 0, ("amdsmn_read"));
 return (amdtemp_decode_fam10h_to_16h(sc->sc_offset, val));
}
