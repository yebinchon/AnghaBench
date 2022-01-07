
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int shmem2_base; int shmem_base; } ;
struct bxe_softc {TYPE_2__ devinfo; } ;
struct TYPE_4__ {int config2; } ;
struct TYPE_6__ {TYPE_1__ shared_hw_config; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int) ;
 int DBG_LOAD ;
 int MISC_REG_SPIO_EVENT_EN ;
 int MISC_REG_SPIO_INT ;
 int MISC_SPIO_INPUT_HI_Z ;
 int MISC_SPIO_INT_OLD_SET_POS ;
 int MISC_SPIO_SPIO5 ;
 int PORT_0 ;
 int PORT_MAX ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int) ;
 int SHARED_HW_CFG_FAN_FAILURE_ENABLED ;
 int SHARED_HW_CFG_FAN_FAILURE_MASK ;
 int SHARED_HW_CFG_FAN_FAILURE_PHY_TYPE ;
 int SHMEM_RD (struct bxe_softc*,int ) ;
 int bxe_set_spio (struct bxe_softc*,int,int ) ;
 TYPE_3__ dev_info ;
 int elink_fan_failure_det_req (struct bxe_softc*,int ,int ,int) ;

__attribute__((used)) static void
bxe_setup_fan_failure_detection(struct bxe_softc *sc)
{
    int is_required;
    uint32_t val;
    int port;

    is_required = 0;
    val = (SHMEM_RD(sc, dev_info.shared_hw_config.config2) &
           SHARED_HW_CFG_FAN_FAILURE_MASK);

    if (val == SHARED_HW_CFG_FAN_FAILURE_ENABLED) {
        is_required = 1;
    }





    else if (val == SHARED_HW_CFG_FAN_FAILURE_PHY_TYPE) {
        for (port = PORT_0; port < PORT_MAX; port++) {
            is_required |= elink_fan_failure_det_req(sc,
                                                     sc->devinfo.shmem_base,
                                                     sc->devinfo.shmem2_base,
                                                     port);
        }
    }

    BLOGD(sc, DBG_LOAD, "fan detection setting: %d\n", is_required);

    if (is_required == 0) {
        return;
    }


    bxe_set_spio(sc, MISC_SPIO_SPIO5, MISC_SPIO_INPUT_HI_Z);


    val = REG_RD(sc, MISC_REG_SPIO_INT);
    val |= (MISC_SPIO_SPIO5 << MISC_SPIO_INT_OLD_SET_POS);
    REG_WR(sc, MISC_REG_SPIO_INT, val);


    val = REG_RD(sc, MISC_REG_SPIO_EVENT_EN);
    val |= MISC_SPIO_SPIO5;
    REG_WR(sc, MISC_REG_SPIO_EVENT_EN, val);
}
