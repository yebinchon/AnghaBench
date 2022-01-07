
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct mly_softc {scalar_t__ mly_command_mailbox; scalar_t__ mly_error_status; int mly_idbr; } ;


 int DELAY (int) ;
 int ENXIO ;
 scalar_t__ MLY_ERROR_VALID (struct mly_softc*) ;
 int MLY_GET_REG (struct mly_softc*,scalar_t__) ;
 int MLY_HM_STSACK ;
 scalar_t__ MLY_IDBR_TRUE (struct mly_softc*,int ) ;
 int MLY_MSG_EMPTY ;





 int MLY_SET_REG (struct mly_softc*,int ,int ) ;
 int debug_called (int) ;
 int mly_printf (struct mly_softc*,char*,...) ;

__attribute__((used)) static int
mly_fwhandshake(struct mly_softc *sc)
{
    u_int8_t error, param0, param1;
    int spinup = 0;

    debug_called(1);


    MLY_SET_REG(sc, sc->mly_idbr, MLY_HM_STSACK);
    DELAY(1000);


    if (!MLY_IDBR_TRUE(sc, MLY_HM_STSACK))
 return(0);
    mly_printf(sc, "controller initialisation started\n");


    while (MLY_IDBR_TRUE(sc, MLY_HM_STSACK)) {

 if (MLY_ERROR_VALID(sc)) {
     error = MLY_GET_REG(sc, sc->mly_error_status) & ~MLY_MSG_EMPTY;
     param0 = MLY_GET_REG(sc, sc->mly_command_mailbox);
     param1 = MLY_GET_REG(sc, sc->mly_command_mailbox + 1);

     switch(error) {
     case 128:
  if (!spinup) {
      mly_printf(sc, "drive spinup in progress\n");
      spinup = 1;
  }
  break;
     case 129:
  mly_printf(sc, "mirror race recovery failed, one or more drives offline\n");
  break;
     case 131:
  mly_printf(sc, "mirror race recovery in progress\n");
  break;
     case 130:
  mly_printf(sc, "mirror race recovery on a critical drive\n");
  break;
     case 132:
  mly_printf(sc, "FATAL MEMORY PARITY ERROR\n");
  return(ENXIO);
     default:
  mly_printf(sc, "unknown initialisation code 0x%x\n", error);
     }
 }
    }
    return(0);
}
