
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct cmng_init_input {int* vnic_max_rate; } ;
struct TYPE_4__ {int line_speed; } ;
struct TYPE_5__ {int* mf_config; } ;
struct TYPE_6__ {TYPE_2__ mf_info; } ;
struct bxe_softc {TYPE_1__ link_vars; TYPE_3__ devinfo; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int,int) ;
 int DBG_LOAD ;
 int FUNC_MF_CFG_FUNC_HIDE ;
 scalar_t__ IS_MF_SI (struct bxe_softc*) ;
 int bxe_extract_max_cfg (struct bxe_softc*,int) ;

__attribute__((used)) static void
bxe_calc_vn_max(struct bxe_softc *sc,
                int vn,
                struct cmng_init_input *input)
{
    uint16_t vn_max_rate;
    uint32_t vn_cfg = sc->devinfo.mf_info.mf_config[vn];
    uint32_t max_cfg;

    if (vn_cfg & FUNC_MF_CFG_FUNC_HIDE) {
        vn_max_rate = 0;
    } else {
        max_cfg = bxe_extract_max_cfg(sc, vn_cfg);

        if (IS_MF_SI(sc)) {

            vn_max_rate = ((sc->link_vars.line_speed * max_cfg) / 100);
        } else {

            vn_max_rate = (max_cfg * 100);
        }
    }

    BLOGD(sc, DBG_LOAD, "vn %d: vn_max_rate %d\n", vn, vn_max_rate);

    input->vnic_max_rate[vn] = vn_max_rate;
}
