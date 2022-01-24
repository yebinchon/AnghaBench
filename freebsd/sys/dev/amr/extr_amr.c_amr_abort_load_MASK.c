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
struct amr_softc {int /*<<< orphan*/  amr_list_lock; } ;
struct amr_command {int /*<<< orphan*/  ac_status; struct amr_softc* ac_sc; } ;
typedef  int /*<<< orphan*/  ac_qhead_t ;

/* Variables and functions */
 int /*<<< orphan*/  AMR_STATUS_ABORTED ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct amr_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct amr_command*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct amr_command *ac)
{
    ac_qhead_t head;
    struct amr_softc *sc = ac->ac_sc;

    FUNC3(&sc->amr_list_lock, MA_OWNED);

    ac->ac_status = AMR_STATUS_ABORTED;
    FUNC2(&head);
    FUNC1(ac, &head);

    FUNC5(&sc->amr_list_lock);
    FUNC0(sc, &head);
    FUNC4(&sc->amr_list_lock);
}