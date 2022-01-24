#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct md_s {scalar_t__ type; int flags; int fwsectors; int fwheads; char* ident; int (* start ) (struct md_s*,struct bio*) ;int /*<<< orphan*/  devstat; int /*<<< orphan*/  queue_mtx; int /*<<< orphan*/  bio_queue; } ;
struct bio {scalar_t__ bio_cmd; int /*<<< orphan*/  bio_length; int /*<<< orphan*/  bio_completed; int /*<<< orphan*/  bio_bcount; int /*<<< orphan*/  bio_resid; } ;
struct TYPE_5__ {int /*<<< orphan*/  td_pflags; } ;

/* Variables and functions */
 scalar_t__ BIO_GETATTR ; 
 scalar_t__ BIO_READ ; 
 scalar_t__ BIO_WRITE ; 
 int EOPNOTSUPP ; 
 int MD_EXITING ; 
 int MD_SHUTDOWN ; 
 int MD_VERIFY ; 
 scalar_t__ MD_VNODE ; 
 int PDROP ; 
 int PRIBIO ; 
 int /*<<< orphan*/  TDP_NORUNNINGBUF ; 
 struct bio* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* curthread ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct bio*) ; 
 scalar_t__ FUNC2 (struct bio*,char*,int) ; 
 scalar_t__ FUNC3 (struct bio*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct md_s*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int FUNC10 (struct md_s*,struct bio*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC13(void *arg)
{
	struct md_s *sc;
	struct bio *bp;
	int error;

	sc = arg;
	FUNC11(curthread);
	FUNC9(curthread, PRIBIO);
	FUNC12(curthread);
	if (sc->type == MD_VNODE)
		curthread->td_pflags |= TDP_NORUNNINGBUF;

	for (;;) {
		FUNC7(&sc->queue_mtx);
		if (sc->flags & MD_SHUTDOWN) {
			sc->flags |= MD_EXITING;
			FUNC8(&sc->queue_mtx);
			FUNC5(0);
		}
		bp = FUNC0(&sc->bio_queue);
		if (!bp) {
			FUNC6(sc, &sc->queue_mtx, PRIBIO | PDROP, "mdwait", 0);
			continue;
		}
		FUNC8(&sc->queue_mtx);
		if (bp->bio_cmd == BIO_GETATTR) {
			int isv = ((sc->flags & MD_VERIFY) != 0);

			if ((sc->fwsectors && sc->fwheads &&
			    (FUNC2(bp, "GEOM::fwsectors",
			    sc->fwsectors) ||
			    FUNC2(bp, "GEOM::fwheads",
			    sc->fwheads))) ||
			    FUNC2(bp, "GEOM::candelete", 1))
				error = -1;
			else if (sc->ident[0] != '\0' &&
			    FUNC3(bp, "GEOM::ident", sc->ident))
				error = -1;
			else if (FUNC2(bp, "MNT::verified", isv))
				error = -1;
			else
				error = EOPNOTSUPP;
		} else {
			error = sc->start(sc, bp);
		}

		if (bp->bio_cmd == BIO_READ || bp->bio_cmd == BIO_WRITE) {
			/*
			 * Devstat uses (bio_bcount, bio_resid) for
			 * determining the length of the completed part of
			 * the i/o.  g_io_deliver() will translate from
			 * bio_completed to that, but it also destroys the
			 * bio so we must do our own translation.
			 */
			bp->bio_bcount = bp->bio_length;
			bp->bio_resid = (error == -1 ? bp->bio_bcount : 0);
			FUNC1(sc->devstat, bp);
		}
		if (error != -1) {
			bp->bio_completed = bp->bio_length;
			FUNC4(bp, error);
		}
	}
}