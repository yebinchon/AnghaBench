
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int sc_dev; } ;
struct r12a_fw_cmd_msrrpt {int macid; scalar_t__ macid_end; int msrb0; } ;
typedef int status ;


 int R12A_CMD_MSR_RPT ;
 int R12A_MSRRPT_B0_ASSOC ;
 int R12A_MSRRPT_B0_DISASSOC ;
 int RTWN_MACID_VALID ;
 int device_printf (int ,char*) ;
 int r88e_fw_cmd (struct rtwn_softc*,int ,struct r12a_fw_cmd_msrrpt*,int) ;

void
r12a_set_media_status(struct rtwn_softc *sc, int macid)
{
 struct r12a_fw_cmd_msrrpt status;
 int error;

 if (macid & RTWN_MACID_VALID)
  status.msrb0 = R12A_MSRRPT_B0_ASSOC;
 else
  status.msrb0 = R12A_MSRRPT_B0_DISASSOC;

 status.macid = (macid & ~RTWN_MACID_VALID);
 status.macid_end = 0;

 error = r88e_fw_cmd(sc, R12A_CMD_MSR_RPT, &status, sizeof(status));
 if (error != 0)
  device_printf(sc->sc_dev, "cannot change media status!\n");
}
