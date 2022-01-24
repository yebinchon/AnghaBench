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
struct amr_softc {int /*<<< orphan*/  amr_dev; } ;
struct amr_command {int ac_flags; int /*<<< orphan*/ * ac_complete; struct amr_softc* ac_sc; } ;

/* Variables and functions */
 int AMR_CMD_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct amr_softc*) ; 
 int FUNC2 (struct amr_command*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(struct amr_command *ac)
{
    struct amr_softc	*sc = ac->ac_sc;
    int			error, count;

    FUNC3(2);

    ac->ac_complete = NULL;
    if ((error = FUNC2(ac)) != 0)
	return(error);

    count = 0;
    do {
	/* 
	 * Poll for completion, although the interrupt handler may beat us to it. 
	 * Note that the timeout here is somewhat arbitrary.
	 */
	FUNC1(sc);
	FUNC0(1000);
    } while ((ac->ac_flags & AMR_CMD_BUSY) && (count++ < 1000));
    if (!(ac->ac_flags & AMR_CMD_BUSY)) {
	error = 0;
    } else {
	/* XXX the slot is now marked permanently busy */
	error = EIO;
	FUNC4(sc->amr_dev, "polled command timeout\n");
    }
    return(error);
}