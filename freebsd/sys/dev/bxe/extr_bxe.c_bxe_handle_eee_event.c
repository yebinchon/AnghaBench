
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*) ;
 int DBG_INTR ;
 int DRV_MSG_CODE_EEE_RESULTS_ACK ;
 int bxe_fw_command (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static void
bxe_handle_eee_event(struct bxe_softc *sc)
{
    BLOGD(sc, DBG_INTR, "EEE - LLDP event\n");
    bxe_fw_command(sc, DRV_MSG_CODE_EEE_RESULTS_ACK, 0);
}
