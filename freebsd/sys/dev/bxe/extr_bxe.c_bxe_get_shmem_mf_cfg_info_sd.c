
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct bxe_mf_info {int multi_vnics_mode; int* mf_config; int vnics_per_port; int mf_protos_supported; scalar_t__ ext_id; } ;
struct TYPE_3__ {struct bxe_mf_info mf_info; } ;
struct bxe_softc {TYPE_1__ devinfo; } ;
struct TYPE_4__ {int e1hov_tag; } ;


 int BLOGE (struct bxe_softc*,char*,scalar_t__) ;
 scalar_t__ CHIP_4_PORT_MODE ;
 scalar_t__ CHIP_PORT_MODE (struct bxe_softc*) ;
 int FUNC_MF_CFG_PROTOCOL_FCOE ;
 int FUNC_MF_CFG_PROTOCOL_ISCSI ;
 int FUNC_MF_CFG_PROTOCOL_MASK ;
 scalar_t__ MFCFG_RD (struct bxe_softc*,int ) ;
 int MF_PROTO_SUPPORT_ETHERNET ;
 int MF_PROTO_SUPPORT_FCOE ;
 int MF_PROTO_SUPPORT_ISCSI ;
 size_t SC_ABS_FUNC (struct bxe_softc*) ;
 size_t SC_VN (struct bxe_softc*) ;
 int VALID_OVLAN (scalar_t__) ;
 TYPE_2__* func_mf_config ;

__attribute__((used)) static int
bxe_get_shmem_mf_cfg_info_sd(struct bxe_softc *sc)
{
    struct bxe_mf_info *mf_info = &sc->devinfo.mf_info;
    uint32_t val;



    val = MFCFG_RD(sc, func_mf_config[SC_ABS_FUNC(sc)].e1hov_tag);
    mf_info->ext_id = (uint16_t)val;

    mf_info->multi_vnics_mode = 1;

    if (!VALID_OVLAN(mf_info->ext_id)) {
        BLOGE(sc, "Invalid VLAN (%d)\n", mf_info->ext_id);
        return (1);
    }


    if ((mf_info->mf_config[SC_VN(sc)] & FUNC_MF_CFG_PROTOCOL_MASK) ==
        FUNC_MF_CFG_PROTOCOL_ISCSI) {
        mf_info->mf_protos_supported |= MF_PROTO_SUPPORT_ISCSI;
    } else if ((mf_info->mf_config[SC_VN(sc)] & FUNC_MF_CFG_PROTOCOL_MASK) ==
               FUNC_MF_CFG_PROTOCOL_FCOE) {
        mf_info->mf_protos_supported |= MF_PROTO_SUPPORT_FCOE;
    } else {
        mf_info->mf_protos_supported |= MF_PROTO_SUPPORT_ETHERNET;
    }

    mf_info->vnics_per_port =
        (CHIP_PORT_MODE(sc) == CHIP_4_PORT_MODE) ? 2 : 4;

    return (0);
}
