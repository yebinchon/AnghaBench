
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct reg_addr {int size; int addr; int presets; } ;
struct bxe_softc {int dummy; } ;


 scalar_t__ IS_REG_IN_PRESET (int ,int) ;
 int REG_RD (struct bxe_softc*,int) ;
 int REG_WR (struct bxe_softc*,int const,int const) ;
 int* __bxe_get_page_addr_ar (struct bxe_softc*) ;
 struct reg_addr* __bxe_get_page_read_ar (struct bxe_softc*) ;
 int __bxe_get_page_read_num (struct bxe_softc*) ;
 int __bxe_get_page_reg_num (struct bxe_softc*) ;
 int* __bxe_get_page_write_ar (struct bxe_softc*) ;
 int __bxe_get_page_write_num (struct bxe_softc*) ;

__attribute__((used)) static void
bxe_read_pages_regs(struct bxe_softc *sc, uint32_t *p, uint32_t preset)
{
    uint32_t i, j, k, n;


    const uint32_t *page_addr = __bxe_get_page_addr_ar(sc);

    int num_pages = __bxe_get_page_reg_num(sc);

    const uint32_t *write_addr = __bxe_get_page_write_ar(sc);

    int write_num = __bxe_get_page_write_num(sc);

    const struct reg_addr *read_addr = __bxe_get_page_read_ar(sc);

    int read_num = __bxe_get_page_read_num(sc);
    uint32_t addr, size;

    for (i = 0; i < num_pages; i++) {
        for (j = 0; j < write_num; j++) {
            REG_WR(sc, write_addr[j], page_addr[i]);

            for (k = 0; k < read_num; k++) {
                if (IS_REG_IN_PRESET(read_addr[k].presets, preset)) {
                    size = read_addr[k].size;
                    for (n = 0; n < size; n++) {
                        addr = read_addr[k].addr + n*4;
                        *p++ = REG_RD(sc, addr);
                    }
                }
            }
        }
    }
    return;
}
