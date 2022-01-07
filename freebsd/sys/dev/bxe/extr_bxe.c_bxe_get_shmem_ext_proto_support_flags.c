
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct bxe_softc {int dummy; } ;
struct TYPE_2__ {int func_cfg; } ;


 int MACP_FUNC_CFG_FLAGS_ENABLED ;
 int MACP_FUNC_CFG_FLAGS_ETHERNET ;
 int MACP_FUNC_CFG_FLAGS_FCOE_OFFLOAD ;
 int MACP_FUNC_CFG_FLAGS_ISCSI_OFFLOAD ;
 int MFCFG_RD (struct bxe_softc*,int ) ;
 int MF_PROTO_SUPPORT_ETHERNET ;
 int MF_PROTO_SUPPORT_FCOE ;
 int MF_PROTO_SUPPORT_ISCSI ;
 size_t SC_ABS_FUNC (struct bxe_softc*) ;
 TYPE_1__* func_ext_config ;

__attribute__((used)) static uint32_t
bxe_get_shmem_ext_proto_support_flags(struct bxe_softc *sc)
{
    uint32_t retval = 0;
    uint32_t val;

    val = MFCFG_RD(sc, func_ext_config[SC_ABS_FUNC(sc)].func_cfg);

    if (val & MACP_FUNC_CFG_FLAGS_ENABLED) {
        if (val & MACP_FUNC_CFG_FLAGS_ETHERNET) {
            retval |= MF_PROTO_SUPPORT_ETHERNET;
        }
        if (val & MACP_FUNC_CFG_FLAGS_ISCSI_OFFLOAD) {
            retval |= MF_PROTO_SUPPORT_ISCSI;
        }
        if (val & MACP_FUNC_CFG_FLAGS_FCOE_OFFLOAD) {
            retval |= MF_PROTO_SUPPORT_FCOE;
        }
    }

    return (retval);
}
