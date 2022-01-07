
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;


 scalar_t__ BAR_CSTRORM_INTMEM ;
 scalar_t__ BAR_TSTRORM_INTMEM ;
 scalar_t__ BAR_USTRORM_INTMEM ;
 scalar_t__ BAR_XSTRORM_INTMEM ;
 int BLOGE (struct bxe_softc*,char*,int,...) ;
 scalar_t__ COMMON_ASM_INVALID_ASSERT_OPCODE ;
 scalar_t__ CSTORM_ASSERT_LIST_INDEX_OFFSET ;
 scalar_t__ CSTORM_ASSERT_LIST_OFFSET (int) ;
 scalar_t__ REG_RD (struct bxe_softc*,scalar_t__) ;
 char REG_RD8 (struct bxe_softc*,scalar_t__) ;
 int STORM_ASSERT_ARRAY_SIZE ;
 scalar_t__ TSTORM_ASSERT_LIST_INDEX_OFFSET ;
 scalar_t__ TSTORM_ASSERT_LIST_OFFSET (int) ;
 scalar_t__ USTORM_ASSERT_LIST_INDEX_OFFSET ;
 scalar_t__ USTORM_ASSERT_LIST_OFFSET (int) ;
 scalar_t__ XSTORM_ASSERT_LIST_INDEX_OFFSET ;
 scalar_t__ XSTORM_ASSERT_LIST_OFFSET (int) ;

__attribute__((used)) static int
bxe_mc_assert(struct bxe_softc *sc)
{
    char last_idx;
    int i, rc = 0;
    uint32_t row0, row1, row2, row3;


    last_idx = REG_RD8(sc, BAR_XSTRORM_INTMEM + XSTORM_ASSERT_LIST_INDEX_OFFSET);
    if (last_idx)
        BLOGE(sc, "XSTORM_ASSERT_LIST_INDEX 0x%x\n", last_idx);


    for (i = 0; i < STORM_ASSERT_ARRAY_SIZE; i++) {

        row0 = REG_RD(sc, BAR_XSTRORM_INTMEM + XSTORM_ASSERT_LIST_OFFSET(i));
        row1 = REG_RD(sc, BAR_XSTRORM_INTMEM + XSTORM_ASSERT_LIST_OFFSET(i) + 4);
        row2 = REG_RD(sc, BAR_XSTRORM_INTMEM + XSTORM_ASSERT_LIST_OFFSET(i) + 8);
        row3 = REG_RD(sc, BAR_XSTRORM_INTMEM + XSTORM_ASSERT_LIST_OFFSET(i) + 12);

        if (row0 != COMMON_ASM_INVALID_ASSERT_OPCODE) {
            BLOGE(sc, "XSTORM_ASSERT_INDEX 0x%x = 0x%08x 0x%08x 0x%08x 0x%08x\n",
                  i, row3, row2, row1, row0);
            rc++;
        } else {
            break;
        }
    }


    last_idx = REG_RD8(sc, BAR_TSTRORM_INTMEM + TSTORM_ASSERT_LIST_INDEX_OFFSET);
    if (last_idx) {
        BLOGE(sc, "TSTORM_ASSERT_LIST_INDEX 0x%x\n", last_idx);
    }


    for (i = 0; i < STORM_ASSERT_ARRAY_SIZE; i++) {

        row0 = REG_RD(sc, BAR_TSTRORM_INTMEM + TSTORM_ASSERT_LIST_OFFSET(i));
        row1 = REG_RD(sc, BAR_TSTRORM_INTMEM + TSTORM_ASSERT_LIST_OFFSET(i) + 4);
        row2 = REG_RD(sc, BAR_TSTRORM_INTMEM + TSTORM_ASSERT_LIST_OFFSET(i) + 8);
        row3 = REG_RD(sc, BAR_TSTRORM_INTMEM + TSTORM_ASSERT_LIST_OFFSET(i) + 12);

        if (row0 != COMMON_ASM_INVALID_ASSERT_OPCODE) {
            BLOGE(sc, "TSTORM_ASSERT_INDEX 0x%x = 0x%08x 0x%08x 0x%08x 0x%08x\n",
                  i, row3, row2, row1, row0);
            rc++;
        } else {
            break;
        }
    }


    last_idx = REG_RD8(sc, BAR_CSTRORM_INTMEM + CSTORM_ASSERT_LIST_INDEX_OFFSET);
    if (last_idx) {
        BLOGE(sc, "CSTORM_ASSERT_LIST_INDEX 0x%x\n", last_idx);
    }


    for (i = 0; i < STORM_ASSERT_ARRAY_SIZE; i++) {

        row0 = REG_RD(sc, BAR_CSTRORM_INTMEM + CSTORM_ASSERT_LIST_OFFSET(i));
        row1 = REG_RD(sc, BAR_CSTRORM_INTMEM + CSTORM_ASSERT_LIST_OFFSET(i) + 4);
        row2 = REG_RD(sc, BAR_CSTRORM_INTMEM + CSTORM_ASSERT_LIST_OFFSET(i) + 8);
        row3 = REG_RD(sc, BAR_CSTRORM_INTMEM + CSTORM_ASSERT_LIST_OFFSET(i) + 12);

        if (row0 != COMMON_ASM_INVALID_ASSERT_OPCODE) {
            BLOGE(sc, "CSTORM_ASSERT_INDEX 0x%x = 0x%08x 0x%08x 0x%08x 0x%08x\n",
                  i, row3, row2, row1, row0);
            rc++;
        } else {
            break;
        }
    }


    last_idx = REG_RD8(sc, BAR_USTRORM_INTMEM + USTORM_ASSERT_LIST_INDEX_OFFSET);
    if (last_idx) {
        BLOGE(sc, "USTORM_ASSERT_LIST_INDEX 0x%x\n", last_idx);
    }


    for (i = 0; i < STORM_ASSERT_ARRAY_SIZE; i++) {

        row0 = REG_RD(sc, BAR_USTRORM_INTMEM + USTORM_ASSERT_LIST_OFFSET(i));
        row1 = REG_RD(sc, BAR_USTRORM_INTMEM + USTORM_ASSERT_LIST_OFFSET(i) + 4);
        row2 = REG_RD(sc, BAR_USTRORM_INTMEM + USTORM_ASSERT_LIST_OFFSET(i) + 8);
        row3 = REG_RD(sc, BAR_USTRORM_INTMEM + USTORM_ASSERT_LIST_OFFSET(i) + 12);

        if (row0 != COMMON_ASM_INVALID_ASSERT_OPCODE) {
            BLOGE(sc, "USTORM_ASSERT_INDEX 0x%x = 0x%08x 0x%08x 0x%08x 0x%08x\n",
                  i, row3, row2, row1, row0);
            rc++;
        } else {
            break;
        }
    }

    return (rc);
}
