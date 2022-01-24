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
typedef  int /*<<< orphan*/  uint32_t ;
struct g_shsec_softc {int dummy; } ;
struct bio {scalar_t__ bio_error; scalar_t__ bio_cmd; int bio_pflags; scalar_t__ bio_inbed; scalar_t__ bio_children; scalar_t__ bio_length; scalar_t__ bio_completed; scalar_t__ bio_data; TYPE_2__* bio_to; struct bio* bio_parent; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {TYPE_1__* geom; } ;
struct TYPE_3__ {struct g_shsec_softc* softc; } ;

/* Variables and functions */
 scalar_t__ BIO_READ ; 
 int G_SHSEC_BFLAG_FIRST ; 
 int /*<<< orphan*/  FUNC0 (int,struct bio*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_shsec_zone ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(struct bio *bp)
{
	struct g_shsec_softc *sc;
	struct bio *pbp;

	pbp = bp->bio_parent;
	sc = pbp->bio_to->geom->softc;
	if (bp->bio_error == 0)
		FUNC0(2, bp, "Request done.");
	else {
		FUNC0(0, bp, "Request failed (error=%d).",
		    bp->bio_error);
		if (pbp->bio_error == 0)
			pbp->bio_error = bp->bio_error;
	}
	if (pbp->bio_cmd == BIO_READ) {
		if ((pbp->bio_pflags & G_SHSEC_BFLAG_FIRST) != 0) {
			FUNC1(bp->bio_data, pbp->bio_data, pbp->bio_length);
			pbp->bio_pflags = 0;
		} else {
			FUNC5((uint32_t *)bp->bio_data,
			    (uint32_t *)pbp->bio_data,
			    (ssize_t)pbp->bio_length);
		}
	}
	FUNC2(bp->bio_data, bp->bio_length);
	FUNC6(g_shsec_zone, bp->bio_data);
	FUNC3(bp);
	pbp->bio_inbed++;
	if (pbp->bio_children == pbp->bio_inbed) {
		pbp->bio_completed = pbp->bio_length;
		FUNC4(pbp, pbp->bio_error);
	}
}