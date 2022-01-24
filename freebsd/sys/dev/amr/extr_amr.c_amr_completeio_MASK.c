#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct amrd_softc {int /*<<< orphan*/  amrd_dev; } ;
struct amr_command {scalar_t__ ac_status; TYPE_1__* ac_sc; TYPE_3__* ac_bio; } ;
struct TYPE_6__ {int /*<<< orphan*/  bio_flags; int /*<<< orphan*/  bio_error; TYPE_2__* bio_disk; } ;
struct TYPE_5__ {struct amrd_softc* d_drv1; } ;
struct TYPE_4__ {int /*<<< orphan*/  amr_list_lock; } ;

/* Variables and functions */
 scalar_t__ AMR_STATUS_SUCCESS ; 
 int /*<<< orphan*/  BIO_ERROR ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct amr_command*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct timeval*,int*,int) ; 

__attribute__((used)) static void
FUNC6(struct amr_command *ac)
{
    struct amrd_softc		*sc = ac->ac_bio->bio_disk->d_drv1;
    static struct timeval	lastfail;
    static int			curfail;

    if (ac->ac_status != AMR_STATUS_SUCCESS) {	/* could be more verbose here? */
	ac->ac_bio->bio_error = EIO;
	ac->ac_bio->bio_flags |= BIO_ERROR;

	if (FUNC5(&lastfail, &curfail, 1))
	    FUNC2(sc->amrd_dev, "I/O error - 0x%x\n", ac->ac_status);
/*	amr_printcommand(ac);*/
    }
    FUNC1(ac->ac_bio);
    FUNC3(&ac->ac_sc->amr_list_lock);
    FUNC0(ac);
    FUNC4(&ac->ac_sc->amr_list_lock);
}