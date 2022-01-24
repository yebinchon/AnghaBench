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
struct amr_softc {int /*<<< orphan*/  amr_state; } ;
struct amr_mailbox {int dummy; } ;
struct amr_command {int /*<<< orphan*/ * ac_datamap; int /*<<< orphan*/ * ac_tag; scalar_t__ ac_retries; int /*<<< orphan*/ * ac_complete; int /*<<< orphan*/ * ac_data; int /*<<< orphan*/ * ac_bio; scalar_t__ ac_flags; int /*<<< orphan*/  ac_mailbox; scalar_t__ ac_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMR_STATE_QUEUE_FRZN ; 
 struct amr_command* FUNC0 (struct amr_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

struct amr_command *
FUNC3(struct amr_softc *sc)
{
    struct amr_command	*ac;

    FUNC2(3);

    ac = FUNC0(sc);
    if (ac == NULL) {
	sc->amr_state |= AMR_STATE_QUEUE_FRZN;
	return(NULL);
    }

    /* clear out significant fields */
    ac->ac_status = 0;
    FUNC1(&ac->ac_mailbox, sizeof(struct amr_mailbox));
    ac->ac_flags = 0;
    ac->ac_bio = NULL;
    ac->ac_data = NULL;
    ac->ac_complete = NULL;
    ac->ac_retries = 0;
    ac->ac_tag = NULL;
    ac->ac_datamap = NULL;
    return(ac);
}