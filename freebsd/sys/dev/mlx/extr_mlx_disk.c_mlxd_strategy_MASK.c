#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlxd_softc {int /*<<< orphan*/  mlxd_controller; TYPE_1__* mlxd_drive; } ;
struct bio {int /*<<< orphan*/  bio_bcount; int /*<<< orphan*/  bio_resid; int /*<<< orphan*/  bio_flags; int /*<<< orphan*/  bio_error; TYPE_2__* bio_disk; } ;
struct TYPE_4__ {struct mlxd_softc* d_drv1; } ;
struct TYPE_3__ {scalar_t__ ms_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MLX_SYSD_OFFLINE ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct bio*) ; 

__attribute__((used)) static void
FUNC5(struct bio *bp)
{
    struct mlxd_softc	*sc = bp->bio_disk->d_drv1;

    FUNC3(1);

    /* bogus disk? */
    if (sc == NULL) {
	bp->bio_error = EINVAL;
	bp->bio_flags |= BIO_ERROR;
	goto bad;
    }

    /* XXX may only be temporarily offline - sleep? */
    FUNC0(sc->mlxd_controller);
    if (sc->mlxd_drive->ms_state == MLX_SYSD_OFFLINE) {
	FUNC1(sc->mlxd_controller);
	bp->bio_error = ENXIO;
	bp->bio_flags |= BIO_ERROR;
	goto bad;
    }

    FUNC4(sc->mlxd_controller, bp);
    FUNC1(sc->mlxd_controller);
    return;

 bad:
    /*
     * Correctly set the bio to indicate a failed transfer.
     */
    bp->bio_resid = bp->bio_bcount;
    FUNC2(bp);
    return;
}