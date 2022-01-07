
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int DELAY (int ) ;
 int FLR_WAIT_INTERVAL ;
 int REG_RD (struct bxe_softc*,int ) ;

__attribute__((used)) static uint32_t
bxe_flr_clnup_reg_poll(struct bxe_softc *sc,
                       uint32_t reg,
                       uint32_t expected,
                       uint32_t poll_count)
{
    uint32_t cur_cnt = poll_count;
    uint32_t val;

    while ((val = REG_RD(sc, reg)) != expected && cur_cnt--) {
        DELAY(FLR_WAIT_INTERVAL);
    }

    return (val);
}
