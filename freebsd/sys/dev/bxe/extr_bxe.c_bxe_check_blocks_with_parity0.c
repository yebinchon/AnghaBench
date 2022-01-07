
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;
 int bxe_print_next_block (struct bxe_softc*,int ,char*) ;

__attribute__((used)) static int
bxe_check_blocks_with_parity0(struct bxe_softc *sc,
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
            case 134:
                if (print)
                    bxe_print_next_block(sc, par_num++, "BRB");
                break;
            case 133:
                if (print)
                    bxe_print_next_block(sc, par_num++, "PARSER");
                break;
            case 129:
                if (print)
                    bxe_print_next_block(sc, par_num++, "TSDM");
                break;
            case 131:
                if (print)
                    bxe_print_next_block(sc, par_num++, "SEARCHER");
                break;
            case 130:
                if (print)
                    bxe_print_next_block(sc, par_num++, "TCM");
                break;
            case 128:
                if (print)
                    bxe_print_next_block(sc, par_num++, "TSEMI");
                break;
            case 132:
                if (print)
                    bxe_print_next_block(sc, par_num++, "XPB");
                break;
            }


            sig &= ~cur_bit;
        }
    }

    return (par_num);
}
