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
struct dmae_cmd {int dummy; } ;
struct bxe_softc {scalar_t__ recovery_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 scalar_t__ BXE_RECOVERY_DONE ; 
 scalar_t__ BXE_RECOVERY_NIC_LOADING ; 
 int* FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int DMAE_COMP_VAL ; 
 int DMAE_PCI_ERROR ; 
 int DMAE_PCI_ERR_FLAG ; 
 int DMAE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*,struct dmae_cmd*,int /*<<< orphan*/ ) ; 
 int* wb_comp ; 

__attribute__((used)) static int
FUNC8(struct bxe_softc    *sc,
                         struct dmae_cmd *dmae)
{
    uint32_t *wb_comp = FUNC3(sc, *wb_comp);
    int timeout = FUNC4(sc) ? 400000 : 4000;

    FUNC1(sc);

    /* reset completion */
    *wb_comp = 0;

    /* post the command on the channel used for initializations */
    FUNC7(sc, dmae, FUNC6(sc));

    /* wait for completion */
    FUNC5(5);

    while ((*wb_comp & ~DMAE_PCI_ERR_FLAG) != DMAE_COMP_VAL) {
        if (!timeout ||
            (sc->recovery_state != BXE_RECOVERY_DONE &&
             sc->recovery_state != BXE_RECOVERY_NIC_LOADING)) {
            FUNC0(sc, "DMAE timeout! *wb_comp 0x%x recovery_state 0x%x\n",
                *wb_comp, sc->recovery_state);
            FUNC2(sc);
            return (DMAE_TIMEOUT);
        }

        timeout--;
        FUNC5(50);
    }

    if (*wb_comp & DMAE_PCI_ERR_FLAG) {
        FUNC0(sc, "DMAE PCI error! *wb_comp 0x%x recovery_state 0x%x\n",
                *wb_comp, sc->recovery_state);
        FUNC2(sc);
        return (DMAE_PCI_ERROR);
    }

    FUNC2(sc);
    return (0);
}