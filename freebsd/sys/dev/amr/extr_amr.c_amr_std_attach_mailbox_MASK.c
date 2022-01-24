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
struct amr_softc {int amr_mailboxphys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amr_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct amr_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amr_softc*) ; 
 int /*<<< orphan*/  AMR_SMBOX_0 ; 
 int /*<<< orphan*/  AMR_SMBOX_1 ; 
 int /*<<< orphan*/  AMR_SMBOX_2 ; 
 int /*<<< orphan*/  AMR_SMBOX_3 ; 
 int AMR_SMBOX_ADDR ; 
 int /*<<< orphan*/  AMR_SMBOX_ENABLE ; 

__attribute__((used)) static void
FUNC3(struct amr_softc *sc)
{

    /* program the mailbox physical address */
    FUNC1(sc, AMR_SMBOX_0, sc->amr_mailboxphys         & 0xff);
    FUNC1(sc, AMR_SMBOX_1, (sc->amr_mailboxphys >>  8) & 0xff);
    FUNC1(sc, AMR_SMBOX_2, (sc->amr_mailboxphys >> 16) & 0xff);
    FUNC1(sc, AMR_SMBOX_3, (sc->amr_mailboxphys >> 24) & 0xff);
    FUNC1(sc, AMR_SMBOX_ENABLE, AMR_SMBOX_ADDR);

    /* clear any outstanding interrupt and enable interrupts proper */
    FUNC0(sc);
    FUNC2(sc);
}