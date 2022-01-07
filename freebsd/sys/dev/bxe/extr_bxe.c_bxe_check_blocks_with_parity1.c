
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;
 int TRUE ;
 int bxe_print_next_block (struct bxe_softc*,int ,char*) ;

__attribute__((used)) static int
bxe_check_blocks_with_parity1(struct bxe_softc *sc,
                              uint32_t sig,
                              int par_num,
                              uint8_t *global,
                              uint8_t print)
{
    int i = 0;
    uint32_t cur_bit = 0;
    for (i = 0; sig; i++) {
        cur_bit = ((uint32_t)0x1 << i);
        if (sig & cur_bit) {
            switch (cur_bit) {
            case 138:
                if (print)
                    bxe_print_next_block(sc, par_num++, "PBF");
                break;
            case 137:
                if (print)
                    bxe_print_next_block(sc, par_num++, "QM");
                break;
            case 136:
                if (print)
                    bxe_print_next_block(sc, par_num++, "TM");
                break;
            case 129:
                if (print)
                    bxe_print_next_block(sc, par_num++, "XSDM");
                break;
            case 130:
                if (print)
                    bxe_print_next_block(sc, par_num++, "XCM");
                break;
            case 128:
                if (print)
                    bxe_print_next_block(sc, par_num++, "XSEMI");
                break;
            case 140:
                if (print)
                    bxe_print_next_block(sc, par_num++, "DOORBELLQ");
                break;
            case 139:
                if (print)
                    bxe_print_next_block(sc, par_num++, "NIG");
                break;
            case 131:
                if (print)
                    bxe_print_next_block(sc, par_num++, "VAUX PCI CORE");
                *global = TRUE;
                break;
            case 141:
                if (print)
                    bxe_print_next_block(sc, par_num++, "DEBUG");
                break;
            case 133:
                if (print)
                    bxe_print_next_block(sc, par_num++, "USDM");
                break;
            case 135:
                if (print)
                    bxe_print_next_block(sc, par_num++, "UCM");
                break;
            case 132:
                if (print)
                    bxe_print_next_block(sc, par_num++, "USEMI");
                break;
            case 134:
                if (print)
                    bxe_print_next_block(sc, par_num++, "UPB");
                break;
            case 142:
                if (print)
                    bxe_print_next_block(sc, par_num++, "CSDM");
                break;
            case 143:
                if (print)
                    bxe_print_next_block(sc, par_num++, "CCM");
                break;
            }


            sig &= ~cur_bit;
        }
    }

    return (par_num);
}
