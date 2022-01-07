
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int dev; } ;
typedef TYPE_1__ ae_softc_t ;


 scalar_t__ AE_CHECK_EADDR_VALID (int*) ;
 int AE_EADDR0_REG ;
 int AE_EADDR1_REG ;
 int AE_READ_4 (TYPE_1__*,int ) ;
 int EINVAL ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
ae_get_reg_eaddr(ae_softc_t *sc, uint32_t *eaddr)
{




 eaddr[0] = AE_READ_4(sc, AE_EADDR0_REG);
 eaddr[1] = AE_READ_4(sc, AE_EADDR1_REG);
 eaddr[1] &= 0xffff;

 if (AE_CHECK_EADDR_VALID(eaddr) != 0) {
  if (bootverbose)
   device_printf(sc->dev,
       "Ethernet address registers are invalid.\n");
  return (EINVAL);
 }
 return (0);
}
