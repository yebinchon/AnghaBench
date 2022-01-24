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
struct amr_softc {int /*<<< orphan*/  amr_busyslots; int /*<<< orphan*/ ** amr_busycmd; } ;
struct amr_command {int ac_slot; struct amr_softc* ac_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static __inline int
FUNC3(struct amr_command *ac)
{
    struct amr_softc *sc = ac->ac_sc;
    int			slot;

    FUNC1(3);

    slot = ac->ac_slot;
    if (sc->amr_busycmd[slot] == NULL)
	FUNC2("amr: slot %d not busy?\n", slot);

    sc->amr_busycmd[slot] = NULL;
    FUNC0(&sc->amr_busyslots, 1);

    return (0);
}