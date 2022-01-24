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
struct dmae_cmd {int dst_addr_lo; int len; scalar_t__ dst_addr_hi; int /*<<< orphan*/  src_addr_hi; int /*<<< orphan*/  src_addr_lo; } ;
struct bxe_softc {int /*<<< orphan*/  dmae_ready; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int,char*) ; 
 int /*<<< orphan*/  DMAE_DST_GRC ; 
 int /*<<< orphan*/  DMAE_SRC_PCI ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct bxe_softc*,struct dmae_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*,struct dmae_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * wb_data ; 

void
FUNC10(struct bxe_softc *sc,
               bus_addr_t       dma_addr,
               uint32_t         dst_addr,
               uint32_t         len32)
{
    struct dmae_cmd dmae;
    int rc;

    if (!sc->dmae_ready) {
        FUNC2(sc, (len32 <= 4), ("DMAE not ready and length is %d", len32));

        if (FUNC1(sc)) {
            FUNC8(sc, dst_addr, FUNC0(sc, wb_data[0]), len32);
        } else {
            FUNC9(sc, dst_addr, FUNC0(sc, wb_data[0]), len32);
        }

        return;
    }

    /* set opcode and fixed command fields */
    FUNC7(sc, &dmae, DMAE_SRC_PCI, DMAE_DST_GRC);

    /* fill in addresses and len */
    dmae.src_addr_lo = FUNC4(dma_addr);
    dmae.src_addr_hi = FUNC3(dma_addr);
    dmae.dst_addr_lo = (dst_addr >> 2); /* GRC addr has dword resolution */
    dmae.dst_addr_hi = 0;
    dmae.len         = len32;

    /* issue the command and wait for completion */
    if ((rc = FUNC5(sc, &dmae)) != 0) {
        FUNC6(sc, ("DMAE failed (%d)\n", rc));
    }
}