#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct bxe_softc {int igu_base_sb; int igu_sb_cnt; int igu_dsb_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 int E1HVN_MAX ; 
 int FP_SB_MAX_E1x ; 
 int FUNC3 (int) ; 
 int IGU_FID_ENCODE_IS_PF ; 
 int IGU_FID_PF_NUM_MASK ; 
 scalar_t__ IGU_REG_MAPPING_MEMORY ; 
 int IGU_REG_MAPPING_MEMORY_SIZE ; 
 int IGU_REG_MAPPING_MEMORY_VALID ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct bxe_softc*,scalar_t__) ; 
 int FUNC6 (struct bxe_softc*) ; 
 int FUNC7 (struct bxe_softc*) ; 
 int FUNC8 (int,int) ; 

__attribute__((used)) static int
FUNC9(struct bxe_softc *sc)
{
    int pfid = FUNC6(sc);
    int igu_sb_id;
    uint32_t val;
    uint8_t fid, igu_sb_cnt = 0;

    sc->igu_base_sb = 0xff;

    if (FUNC1(sc)) {
        int vn = FUNC7(sc);
        igu_sb_cnt = sc->igu_sb_cnt;
        sc->igu_base_sb = ((FUNC2(sc) ? pfid : vn) *
                           FP_SB_MAX_E1x);
        sc->igu_dsb_id = (E1HVN_MAX * FP_SB_MAX_E1x +
                          (FUNC2(sc) ? pfid : vn));
        return (0);
    }

    /* IGU in normal mode - read CAM */
    for (igu_sb_id = 0;
         igu_sb_id < IGU_REG_MAPPING_MEMORY_SIZE;
         igu_sb_id++) {
        val = FUNC5(sc, IGU_REG_MAPPING_MEMORY + igu_sb_id * 4);
        if (!(val & IGU_REG_MAPPING_MEMORY_VALID)) {
            continue;
        }
        fid = FUNC3(val);
        if ((fid & IGU_FID_ENCODE_IS_PF)) {
            if ((fid & IGU_FID_PF_NUM_MASK) != pfid) {
                continue;
            }
            if (FUNC4(val) == 0) {
                /* default status block */
                sc->igu_dsb_id = igu_sb_id;
            } else {
                if (sc->igu_base_sb == 0xff) {
                    sc->igu_base_sb = igu_sb_id;
                }
                igu_sb_cnt++;
            }
        }
    }

    /*
     * Due to new PF resource allocation by MFW T7.4 and above, it's optional
     * that number of CAM entries will not be equal to the value advertised in
     * PCI. Driver should use the minimal value of both as the actual status
     * block count
     */
    sc->igu_sb_cnt = FUNC8(sc->igu_sb_cnt, igu_sb_cnt);

    if (igu_sb_cnt == 0) {
        FUNC0(sc, "CAM configuration error\n");
        return (-1);
    }

    return (0);
}