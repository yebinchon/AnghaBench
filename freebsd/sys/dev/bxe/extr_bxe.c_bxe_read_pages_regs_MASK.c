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
typedef  int uint32_t ;
struct reg_addr {int size; int addr; int /*<<< orphan*/  presets; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int const,int const) ; 
 int* FUNC3 (struct bxe_softc*) ; 
 struct reg_addr* FUNC4 (struct bxe_softc*) ; 
 int FUNC5 (struct bxe_softc*) ; 
 int FUNC6 (struct bxe_softc*) ; 
 int* FUNC7 (struct bxe_softc*) ; 
 int FUNC8 (struct bxe_softc*) ; 

__attribute__((used)) static void
FUNC9(struct bxe_softc *sc, uint32_t *p, uint32_t preset)
{
    uint32_t i, j, k, n;

    /* addresses of the paged registers */
    const uint32_t *page_addr = FUNC3(sc);
    /* number of paged registers */
    int num_pages = FUNC6(sc);
    /* write addresses */
    const uint32_t *write_addr = FUNC7(sc);
    /* number of write addresses */
    int write_num = FUNC8(sc);
    /* read addresses info */
    const struct reg_addr *read_addr = FUNC4(sc);
    /* number of read addresses */
    int read_num = FUNC5(sc);
    uint32_t addr, size;

    for (i = 0; i < num_pages; i++) {
        for (j = 0; j < write_num; j++) {
            FUNC2(sc, write_addr[j], page_addr[i]);

            for (k = 0; k < read_num; k++) {
                if (FUNC0(read_addr[k].presets, preset)) {
                    size = read_addr[k].size;
                    for (n = 0; n < size; n++) {
                        addr = read_addr[k].addr + n*4;
                        *p++ = FUNC1(sc, addr);
                    }
                }
            }
        }
    }
    return;
}