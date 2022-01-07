
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*) ;
 int DBG_LOAD ;
 int FUNC_MF_CFG_MAX_BW_MASK ;
 int FUNC_MF_CFG_MAX_BW_SHIFT ;

__attribute__((used)) static inline uint16_t
bxe_extract_max_cfg(struct bxe_softc *sc,
                    uint32_t mf_cfg)
{
    uint16_t max_cfg = ((mf_cfg & FUNC_MF_CFG_MAX_BW_MASK) >>
                        FUNC_MF_CFG_MAX_BW_SHIFT);

    if (!max_cfg) {
        BLOGD(sc, DBG_LOAD, "Max BW configured to 0 - using 100 instead\n");
        max_cfg = 100;
    }

    return (max_cfg);
}
