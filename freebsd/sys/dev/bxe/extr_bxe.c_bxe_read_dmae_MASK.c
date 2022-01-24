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
struct dmae_cmd {int src_addr_lo; int len; int /*<<< orphan*/  dst_addr_hi; int /*<<< orphan*/  dst_addr_lo; scalar_t__ src_addr_hi; } ;
struct bxe_softc {int /*<<< orphan*/  dmae_ready; } ;

/* Variables and functions */
 int* FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,int,char*) ; 
 int /*<<< orphan*/  DMAE_DST_PCI ; 
 int /*<<< orphan*/  DMAE_SRC_GRC ; 
 int FUNC4 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct bxe_softc*,struct dmae_cmd*) ; 
 int /*<<< orphan*/  FUNC8 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct bxe_softc*,struct dmae_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/ * wb_data ; 

void
FUNC11(struct bxe_softc *sc,
              uint32_t         src_addr,
              uint32_t         len32)
{
    struct dmae_cmd dmae;
    uint32_t *data;
    int i, rc;

    FUNC3(sc, (len32 <= 4), ("DMAE read length is %d", len32));

    if (!sc->dmae_ready) {
        data = FUNC0(sc, wb_data[0]);

        for (i = 0; i < len32; i++) {
            data[i] = (FUNC2(sc)) ?
                          FUNC10(sc, (src_addr + (i * 4))) :
                          FUNC4(sc, (src_addr + (i * 4)));
        }

        return;
    }

    /* set opcode and fixed command fields */
    FUNC9(sc, &dmae, DMAE_SRC_GRC, DMAE_DST_PCI);

    /* fill in addresses and len */
    dmae.src_addr_lo = (src_addr >> 2); /* GRC addr has dword resolution */
    dmae.src_addr_hi = 0;
    dmae.dst_addr_lo = FUNC6(FUNC1(sc, wb_data));
    dmae.dst_addr_hi = FUNC5(FUNC1(sc, wb_data));
    dmae.len         = len32;

    /* issue the command and wait for completion */
    if ((rc = FUNC7(sc, &dmae)) != 0) {
        FUNC8(sc, ("DMAE failed (%d)\n", rc));
    }
}