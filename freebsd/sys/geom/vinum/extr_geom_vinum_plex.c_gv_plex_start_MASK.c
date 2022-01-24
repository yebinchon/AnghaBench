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
struct gv_sd {TYPE_1__* drive_sc; } ;
struct gv_raid5_packet {scalar_t__ length; int lockbase; int /*<<< orphan*/  bits; } ;
struct gv_plex {scalar_t__ org; int /*<<< orphan*/  bqueue; int /*<<< orphan*/  wqueue; int /*<<< orphan*/  packets; } ;
struct bio {scalar_t__ bio_length; scalar_t__ bio_offset; struct gv_sd* bio_caller1; int /*<<< orphan*/  bio_pflags; int /*<<< orphan*/ * bio_caller2; int /*<<< orphan*/  bio_data; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 int /*<<< orphan*/  GV_BIO_ONHOLD ; 
 scalar_t__ GV_PLEX_RAID5 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct gv_raid5_packet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bio*) ; 
 struct bio* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gv_raid5_packet*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct gv_plex*,struct bio*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct gv_raid5_packet* FUNC7 (struct gv_plex*,struct bio*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (struct gv_plex*,struct bio*) ; 
 int /*<<< orphan*/  list ; 

void
FUNC9(struct gv_plex *p, struct bio *bp)
{
	struct bio *cbp;
	struct gv_sd *s;
	struct gv_raid5_packet *wp;
	caddr_t addr;
	off_t bcount, boff, len;

	bcount = bp->bio_length;
	addr = bp->bio_data;
	boff = bp->bio_offset;

	/* Walk over the whole length of the request, we might split it up. */
	while (bcount > 0) {
		wp = NULL;

 		/*
		 * RAID5 plexes need special treatment, as a single request
		 * might involve several read/write sub-requests.
 		 */
		if (p->org == GV_PLEX_RAID5) {
			wp = FUNC7(p, bp, addr, boff, bcount);
 			if (wp == NULL)
 				return;
 
			len = wp->length;

			if (FUNC0(&wp->bits))
				FUNC4(wp);
			else if (wp->lockbase != -1)
				FUNC1(&p->packets, wp, list);

		/*
		 * Requests to concatenated and striped plexes go straight
		 * through.
		 */
		} else {
			len = FUNC6(p, bp, boff, bcount, addr);
		}
		if (len < 0)
			return;
			
		bcount -= len;
		addr += len;
		boff += len;
	}

	/*
	 * Fire off all sub-requests.  We get the correct consumer (== drive)
	 * to send each request to via the subdisk that was stored in
	 * cbp->bio_caller1.
	 */
	cbp = FUNC3(p->bqueue);
	while (cbp != NULL) {
		/*
		 * RAID5 sub-requests need to come in correct order, otherwise
		 * we trip over the parity, as it might be overwritten by
		 * another sub-request.  We abuse cbp->bio_caller2 to mark
		 * potential overlap situations. 
		 */
		if (cbp->bio_caller2 != NULL && FUNC8(p, cbp)) {
			/* Park the bio on the waiting queue. */
			cbp->bio_pflags |= GV_BIO_ONHOLD;
			FUNC2(p->wqueue, cbp);
		} else {
			s = cbp->bio_caller1;
			FUNC5(cbp, s->drive_sc->consumer);
		}
		cbp = FUNC3(p->bqueue);
	}
}