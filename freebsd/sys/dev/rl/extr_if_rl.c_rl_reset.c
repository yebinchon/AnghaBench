
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl_softc {int rl_dev; } ;


 int CSR_READ_1 (struct rl_softc*,int ) ;
 int CSR_WRITE_1 (struct rl_softc*,int ,int) ;
 int DELAY (int) ;
 int RL_CMD_RESET ;
 int RL_COMMAND ;
 int RL_LOCK_ASSERT (struct rl_softc*) ;
 int RL_TIMEOUT ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
rl_reset(struct rl_softc *sc)
{
 int i;

 RL_LOCK_ASSERT(sc);

 CSR_WRITE_1(sc, RL_COMMAND, RL_CMD_RESET);

 for (i = 0; i < RL_TIMEOUT; i++) {
  DELAY(10);
  if (!(CSR_READ_1(sc, RL_COMMAND) & RL_CMD_RESET))
   break;
 }
 if (i == RL_TIMEOUT)
  device_printf(sc->rl_dev, "reset never completed!\n");
}
