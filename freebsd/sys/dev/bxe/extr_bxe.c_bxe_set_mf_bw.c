
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 int DRV_MSG_CODE_SET_MF_BW_ACK ;
 int bxe_config_mf_bw (struct bxe_softc*) ;
 int bxe_fw_command (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static void
bxe_set_mf_bw(struct bxe_softc *sc)
{
    bxe_config_mf_bw(sc);
    bxe_fw_command(sc, DRV_MSG_CODE_SET_MF_BW_ACK, 0);
}
