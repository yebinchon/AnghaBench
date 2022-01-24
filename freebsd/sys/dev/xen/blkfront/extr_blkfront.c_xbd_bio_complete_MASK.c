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
struct xbd_softc {int dummy; } ;
struct xbd_command {scalar_t__ cm_status; struct bio* cm_bp; } ;
struct bio {int bio_flags; scalar_t__ bio_resid; int /*<<< orphan*/  bio_error; } ;

/* Variables and functions */
 int BIO_ERROR ; 
 scalar_t__ BLKIF_RSP_OKAY ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct xbd_command*) ; 

__attribute__((used)) static void
FUNC5(struct xbd_softc *sc, struct xbd_command *cm)
{
	struct bio *bp;

	bp = cm->cm_bp;

	if (FUNC0(cm->cm_status != BLKIF_RSP_OKAY)) {
		FUNC2(bp, "disk error" , -1, 0);
		FUNC3(" status: %x\n", cm->cm_status);
		bp->bio_flags |= BIO_ERROR;
	}

	if (bp->bio_flags & BIO_ERROR)
		bp->bio_error = EIO;
	else
		bp->bio_resid = 0;

	FUNC4(cm);
	FUNC1(bp);
}