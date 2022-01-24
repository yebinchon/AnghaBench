#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ mp_which; scalar_t__ mp_when; int mp_howlong; } ;
struct mlx_softc {int mlx_lastpoll; scalar_t__ mlx_iftype; int /*<<< orphan*/  mlx_timeout; TYPE_1__ mlx_pause; } ;
struct mlx_rebuild_stat {int dummy; } ;
struct mlx_enquiry_old {int dummy; } ;
struct mlx_enquiry {int dummy; } ;
struct mlx_enq_sys_drive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX_CMD_ENQSYSDRIVE ; 
 int /*<<< orphan*/  MLX_CMD_ENQUIRY ; 
 int /*<<< orphan*/  MLX_CMD_ENQUIRY_OLD ; 
 int /*<<< orphan*/  MLX_CMD_REBUILDSTAT ; 
 scalar_t__ MLX_IFTYPE_2 ; 
 int /*<<< orphan*/  FUNC0 (struct mlx_softc*) ; 
 int MLX_MAXDRIVES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void (*) (void*),struct mlx_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int hz ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx_softc*) ; 
 int /*<<< orphan*/  mlx_periodic_enquiry ; 
 int /*<<< orphan*/  mlx_periodic_rebuild ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int time_second ; 

__attribute__((used)) static void
FUNC8(void *data)
{
    struct mlx_softc *sc = (struct mlx_softc *)data;

    FUNC2(1);
    FUNC0(sc);

    /*
     * Run a bus pause? 
     */
    if ((sc->mlx_pause.mp_which != 0) &&
	(sc->mlx_pause.mp_when > 0) &&
	(time_second >= sc->mlx_pause.mp_when)){

	FUNC6(sc);		/* pause is running */
	sc->mlx_pause.mp_when = 0;
	FUNC7(500, hz);

	/* 
	 * Bus pause still running?
	 */
    } else if ((sc->mlx_pause.mp_which != 0) &&
	       (sc->mlx_pause.mp_when == 0)) {

	/* time to stop bus pause? */
	if (time_second >= sc->mlx_pause.mp_howlong) {
	    FUNC6(sc);
	    sc->mlx_pause.mp_which = 0;	/* pause is complete */
	    FUNC7(500, hz);
	} else {
	    FUNC7((time_second % 5) * 100 + 500, hz/8);
	}

	/* 
	 * Run normal periodic activities? 
	 */
    } else if (time_second > (sc->mlx_lastpoll + 10)) {
	sc->mlx_lastpoll = time_second;

	/* 
	 * Check controller status.
	 *
	 * XXX Note that this may not actually launch a command in situations of high load.
	 */
	FUNC5(sc, (sc->mlx_iftype == MLX_IFTYPE_2) ? MLX_CMD_ENQUIRY_OLD : MLX_CMD_ENQUIRY, 
		    FUNC3(sizeof(struct mlx_enquiry), sizeof(struct mlx_enquiry_old)), mlx_periodic_enquiry);

	/*
	 * Check system drive status.
	 *
	 * XXX This might be better left to event-driven detection, eg. I/O to an offline
	 *     drive will detect it's offline, rebuilds etc. should detect the drive is back
	 *     online.
	 */
	FUNC5(sc, MLX_CMD_ENQSYSDRIVE, sizeof(struct mlx_enq_sys_drive) * MLX_MAXDRIVES, 
			mlx_periodic_enquiry);
		
    }

    /* get drive rebuild/check status */
    /* XXX should check sc->mlx_background if this is only valid while in progress */
    FUNC5(sc, MLX_CMD_REBUILDSTAT, sizeof(struct mlx_rebuild_stat), mlx_periodic_rebuild);

    /* deal with possibly-missed interrupts and timed-out commands */
    FUNC4(sc, 1);

    /* reschedule another poll next second or so */
    FUNC1(&sc->mlx_timeout, hz, mlx_periodic, sc);
}