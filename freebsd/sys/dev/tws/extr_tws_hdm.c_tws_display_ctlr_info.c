
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct tws_softc {int tws_dev; } ;


 int TWS_PARAM_CONTROLLER_PHYS_COUNT ;
 int TWS_PARAM_CTLR_MODEL ;
 int TWS_PARAM_PHYS_TABLE ;
 int TWS_PARAM_VERSION_BIOS ;
 int TWS_PARAM_VERSION_FW ;
 int TWS_PARAM_VERSION_TABLE ;
 int device_printf (int ,char*,int *,int ,int *,int *) ;
 int tws_get_param (struct tws_softc*,int ,int ,int,int *) ;

void
tws_display_ctlr_info(struct tws_softc *sc)
{

    uint8_t fw_ver[16], bios_ver[16], ctlr_model[16], num_phys=0;
    uint32_t error[4];

    error[0] = tws_get_param(sc, TWS_PARAM_PHYS_TABLE,
                             TWS_PARAM_CONTROLLER_PHYS_COUNT, 1, &num_phys);
    error[1] = tws_get_param(sc, TWS_PARAM_VERSION_TABLE,
                             TWS_PARAM_VERSION_FW, 16, fw_ver);
    error[2] = tws_get_param(sc, TWS_PARAM_VERSION_TABLE,
                             TWS_PARAM_VERSION_BIOS, 16, bios_ver);
    error[3] = tws_get_param(sc, TWS_PARAM_VERSION_TABLE,
                             TWS_PARAM_CTLR_MODEL, 16, ctlr_model);

    if ( !error[0] && !error[1] && !error[2] && !error[3] ) {
        device_printf( sc->tws_dev,
        "Controller details: Model %.16s, %d Phys, Firmware %.16s, BIOS %.16s\n",
         ctlr_model, num_phys, fw_ver, bios_ver);
    }

}
