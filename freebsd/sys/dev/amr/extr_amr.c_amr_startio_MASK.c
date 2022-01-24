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
struct amr_softc {int amr_state; int /*<<< orphan*/  (* amr_cam_command ) (struct amr_softc*,struct amr_command**) ;} ;
struct amr_command {int dummy; } ;

/* Variables and functions */
 int AMR_STATE_QUEUE_FRZN ; 
 int /*<<< orphan*/  FUNC0 (struct amr_softc*,struct amr_command**) ; 
 struct amr_command* FUNC1 (struct amr_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct amr_command*) ; 
 scalar_t__ FUNC3 (struct amr_command*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct amr_softc*,struct amr_command**) ; 

void
FUNC6(struct amr_softc *sc)
{
    struct amr_command	*ac;

    /* spin until something prevents us from doing any work */
    for (;;) {

	/* Don't bother to queue commands no bounce buffers are available. */
	if (sc->amr_state & AMR_STATE_QUEUE_FRZN)
	    break;

	/* try to get a ready command */
	ac = FUNC1(sc);

	/* if that failed, build a command from a bio */
	if (ac == NULL)
	    (void)FUNC0(sc, &ac);

	/* if that failed, build a command from a ccb */
	if ((ac == NULL) && (sc->amr_cam_command != NULL))
	    sc->amr_cam_command(sc, &ac);

	/* if we don't have anything to do, give up */
	if (ac == NULL)
	    break;

	/* try to give the command to the controller; if this fails save it for later and give up */
	if (FUNC3(ac)) {
	    FUNC4(2, "controller busy, command deferred");
	    FUNC2(ac);	/* XXX schedule retry very soon? */
	    break;
	}
    }
}