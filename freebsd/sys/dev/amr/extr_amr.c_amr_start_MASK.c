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
struct amr_softc {int /*<<< orphan*/  amr_busyslots; struct amr_command** amr_busycmd; } ;
struct amr_command {int ac_slot; int /*<<< orphan*/  ac_flags; struct amr_softc* ac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMR_CMD_BUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct amr_command*) ; 
 int FUNC1 (struct amr_command*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int
FUNC5(struct amr_command *ac)
{
    struct amr_softc *sc;
    int error = 0;
    int slot;

    FUNC3(3);

    /* mark command as busy so that polling consumer can tell */
    sc = ac->ac_sc;
    ac->ac_flags |= AMR_CMD_BUSY;

    /* get a command slot (freed in amr_done) */
    slot = ac->ac_slot;
    if (sc->amr_busycmd[slot] != NULL)
	FUNC4("amr: slot %d busy?\n", slot);
    sc->amr_busycmd[slot] = ac;
    FUNC2(&sc->amr_busyslots, 1);

    /* Now we have a slot, we can map the command (unmapped in amr_complete). */
    if ((error = FUNC1(ac)) == ENOMEM) {
	/*
	 * Memory resources are short, so free the slot and let this be tried
	 * later.
	 */
	FUNC0(ac);
    }

    return (error);
}