
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;


 int DELAY (int) ;
 scalar_t__ REG_RD (struct bxe_softc*,scalar_t__) ;

__attribute__((used)) static inline uint32_t
reg_poll(struct bxe_softc *sc,
         uint32_t reg,
         uint32_t expected,
         int ms,
         int wait)
{
    uint32_t val;

    do {
        val = REG_RD(sc, reg);
        if (val == expected) {
            break;
        }
        ms -= wait;
        DELAY(wait * 1000);
    } while (ms > 0);

    return (val);
}
