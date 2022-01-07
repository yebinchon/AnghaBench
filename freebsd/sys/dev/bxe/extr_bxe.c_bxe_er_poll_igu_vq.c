
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;


 int BLOGE (struct bxe_softc*,char*,scalar_t__) ;
 int DELAY (int) ;
 int IGU_REG_PENDING_BITS_STATUS ;
 scalar_t__ REG_RD (struct bxe_softc*,int ) ;

__attribute__((used)) static int
bxe_er_poll_igu_vq(struct bxe_softc *sc)
{
    uint32_t cnt = 1000;
    uint32_t pend_bits = 0;

    do {
        pend_bits = REG_RD(sc, IGU_REG_PENDING_BITS_STATUS);

        if (pend_bits == 0) {
            break;
        }

        DELAY(1000);
    } while (--cnt > 0);

    if (cnt == 0) {
        BLOGE(sc, "Still pending IGU requests bits=0x%08x!\n", pend_bits);
        return (-1);
    }

    return (0);
}
