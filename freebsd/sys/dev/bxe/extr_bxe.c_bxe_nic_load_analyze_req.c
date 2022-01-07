
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;


 int BCM_5710_FW_ENGINEERING_VERSION ;
 scalar_t__ BCM_5710_FW_MAJOR_VERSION ;
 int BCM_5710_FW_MINOR_VERSION ;
 int BCM_5710_FW_REVISION_VERSION ;
 int BLOGD (struct bxe_softc*,int ,char*,scalar_t__,scalar_t__) ;
 int BLOGE (struct bxe_softc*,char*,scalar_t__,scalar_t__) ;
 int DBG_LOAD ;
 scalar_t__ FW_MSG_CODE_DRV_LOAD_COMMON ;
 scalar_t__ FW_MSG_CODE_DRV_LOAD_COMMON_CHIP ;
 scalar_t__ REG_RD (struct bxe_softc*,int ) ;
 int XSEM_REG_PRAM ;

__attribute__((used)) static int
bxe_nic_load_analyze_req(struct bxe_softc *sc,
                         uint32_t load_code)
{
    uint32_t my_fw, loaded_fw;


    if ((load_code != FW_MSG_CODE_DRV_LOAD_COMMON_CHIP) &&
        (load_code != FW_MSG_CODE_DRV_LOAD_COMMON)) {

        my_fw = (BCM_5710_FW_MAJOR_VERSION +
                 (BCM_5710_FW_MINOR_VERSION << 8 ) +
                 (BCM_5710_FW_REVISION_VERSION << 16) +
                 (BCM_5710_FW_ENGINEERING_VERSION << 24));


        loaded_fw = REG_RD(sc, XSEM_REG_PRAM);
        BLOGD(sc, DBG_LOAD, "loaded FW 0x%08x / my FW 0x%08x\n",
              loaded_fw, my_fw);


        if (my_fw != loaded_fw) {
            BLOGE(sc, "FW 0x%08x already loaded (mine is 0x%08x)",
                  loaded_fw, my_fw);
            return (-1);
        }
    }

    return (0);
}
