
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdtemp_softc {int sc_offset; int sc_smn; } ;
typedef int int32_t ;
typedef int device_t ;
typedef int amdsensor_t ;


 int AMDTEMP_17H_CUR_TMP ;
 int AMDTEMP_17H_CUR_TMP_RANGE_SEL ;
 scalar_t__ AMDTEMP_CURTMP_RANGE_ADJUST ;
 scalar_t__ AMDTEMP_ZERO_C_TO_K ;
 int KASSERT (int,char*) ;
 int amdsmn_read (int ,int ,int*) ;
 struct amdtemp_softc* device_get_softc (int ) ;

__attribute__((used)) static int32_t
amdtemp_gettemp17h(device_t dev, amdsensor_t sensor)
{
 struct amdtemp_softc *sc = device_get_softc(dev);
 uint32_t temp, val;
 int error;

 error = amdsmn_read(sc->sc_smn, AMDTEMP_17H_CUR_TMP, &val);
 KASSERT(error == 0, ("amdsmn_read"));

 temp = ((val >> 21) & 0x7ff) * 5 / 4;
 if ((val & AMDTEMP_17H_CUR_TMP_RANGE_SEL) != 0)
  temp -= AMDTEMP_CURTMP_RANGE_ADJUST;
 temp += AMDTEMP_ZERO_C_TO_K + sc->sc_offset * 10;

 return (temp);
}
