
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxp_softc {scalar_t__ cu_resume_bug; } ;


 int CSR_WRITE_1 (struct fxp_softc*,int ,int) ;
 int FXP_CB_COMMAND_NOP ;
 int FXP_CSR_SCB_COMMAND ;
 int FXP_SCB_COMMAND_CU_RESUME ;
 int fxp_scb_wait (struct fxp_softc*) ;

__attribute__((used)) static void
fxp_scb_cmd(struct fxp_softc *sc, int cmd)
{

 if (cmd == FXP_SCB_COMMAND_CU_RESUME && sc->cu_resume_bug) {
  CSR_WRITE_1(sc, FXP_CSR_SCB_COMMAND, FXP_CB_COMMAND_NOP);
  fxp_scb_wait(sc);
 }
 CSR_WRITE_1(sc, FXP_CSR_SCB_COMMAND, cmd);
}
