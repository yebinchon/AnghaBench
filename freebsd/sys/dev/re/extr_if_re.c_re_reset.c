
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rl_softc {int rl_flags; int rl_dev; TYPE_1__* rl_hwrev; } ;
struct TYPE_2__ {scalar_t__ rl_rev; } ;


 int CSR_READ_1 (struct rl_softc*,int) ;
 int CSR_WRITE_1 (struct rl_softc*,int,int) ;
 int DELAY (int) ;
 int RL_CMD_RESET ;
 int RL_COMMAND ;
 int RL_FLAG_MACRESET ;
 scalar_t__ RL_HWREV_8169S ;
 int RL_LOCK_ASSERT (struct rl_softc*) ;
 int RL_TIMEOUT ;
 int device_printf (int ,char*) ;
 int re_gmii_writereg (int ,int,int,int ) ;

__attribute__((used)) static void
re_reset(struct rl_softc *sc)
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

 if ((sc->rl_flags & RL_FLAG_MACRESET) != 0)
  CSR_WRITE_1(sc, 0x82, 1);
 if (sc->rl_hwrev->rl_rev == RL_HWREV_8169S)
  re_gmii_writereg(sc->rl_dev, 1, 0x0b, 0);
}
