
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;




 int bxe_print_next_block (struct bxe_softc*,int ,char*) ;

__attribute__((used)) static int
bxe_check_blocks_with_parity4(struct bxe_softc *sc,
                              uint32_t sig,
                              int par_num,
                              uint8_t print)
{
    uint32_t cur_bit = 0;
    int i = 0;

    for (i = 0; sig; i++) {
        cur_bit = ((uint32_t)0x1 << i);
        if (sig & cur_bit) {
            switch (cur_bit) {
            case 128:
                if (print)
                    bxe_print_next_block(sc, par_num++, "PGLUE_B");
                break;
            case 129:
                if (print)
                    bxe_print_next_block(sc, par_num++, "ATC");
                break;
            }


            sig &= ~cur_bit;
        }
    }

    return (par_num);
}
