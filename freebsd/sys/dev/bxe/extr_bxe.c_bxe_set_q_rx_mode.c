
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ecore_rx_mode_ramrod_params {unsigned long ramrod_flags; unsigned long rx_mode_flags; unsigned long rx_accept_flags; unsigned long tx_accept_flags; int rdata_mapping; int rdata; int state; int * pstate; int func_id; int * rx_mode_obj; int cl_id; scalar_t__ cid; } ;
struct bxe_softc {int rx_mode; int sp_state; int rx_mode_obj; } ;
typedef int ramrod_param ;


 int BLOGE (struct bxe_softc*,char*,int ,int ,int ,int ,int ,int ,int) ;
 int BXE_SP (struct bxe_softc*,int ) ;
 int BXE_SP_MAPPING (struct bxe_softc*,int ) ;
 int ECORE_FILTER_RX_MODE_PENDING ;
 int SC_FUNC (struct bxe_softc*) ;
 int bxe_set_bit (int ,int *) ;
 int ecore_config_rx_mode (struct bxe_softc*,struct ecore_rx_mode_ramrod_params*) ;
 int memset (struct ecore_rx_mode_ramrod_params*,int ,int) ;
 int rx_mode_rdata ;

__attribute__((used)) static int
bxe_set_q_rx_mode(struct bxe_softc *sc,
                  uint8_t cl_id,
                  unsigned long rx_mode_flags,
                  unsigned long rx_accept_flags,
                  unsigned long tx_accept_flags,
                  unsigned long ramrod_flags)
{
    struct ecore_rx_mode_ramrod_params ramrod_param;
    int rc;

    memset(&ramrod_param, 0, sizeof(ramrod_param));


    ramrod_param.cid = 0;
    ramrod_param.cl_id = cl_id;
    ramrod_param.rx_mode_obj = &sc->rx_mode_obj;
    ramrod_param.func_id = SC_FUNC(sc);

    ramrod_param.pstate = &sc->sp_state;
    ramrod_param.state = ECORE_FILTER_RX_MODE_PENDING;

    ramrod_param.rdata = BXE_SP(sc, rx_mode_rdata);
    ramrod_param.rdata_mapping = BXE_SP_MAPPING(sc, rx_mode_rdata);

    bxe_set_bit(ECORE_FILTER_RX_MODE_PENDING, &sc->sp_state);

    ramrod_param.ramrod_flags = ramrod_flags;
    ramrod_param.rx_mode_flags = rx_mode_flags;

    ramrod_param.rx_accept_flags = rx_accept_flags;
    ramrod_param.tx_accept_flags = tx_accept_flags;

    rc = ecore_config_rx_mode(sc, &ramrod_param);
    if (rc < 0) {
        BLOGE(sc, "Set rx_mode %d cli_id 0x%x rx_mode_flags 0x%x "
            "rx_accept_flags 0x%x tx_accept_flags 0x%x "
            "ramrod_flags 0x%x rc %d failed\n", sc->rx_mode, cl_id,
            (uint32_t)rx_mode_flags, (uint32_t)rx_accept_flags,
            (uint32_t)tx_accept_flags, (uint32_t)ramrod_flags, rc);
        return (rc);
    }

    return (0);
}
