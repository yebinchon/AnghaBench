
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mfi_softc {int mfi_config_lock; } ;






 int sx_xlock (int *) ;

__attribute__((used)) static int
mfi_config_lock(struct mfi_softc *sc, uint32_t opcode)
{

 switch (opcode) {
 case 128:
 case 131:
 case 130:
 case 129:
  sx_xlock(&sc->mfi_config_lock);
  return (1);
 default:
  return (0);
 }
}
