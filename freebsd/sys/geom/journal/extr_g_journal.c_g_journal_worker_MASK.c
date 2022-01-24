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
typedef  int /*<<< orphan*/  time_t ;
struct g_provider {int /*<<< orphan*/  sectorsize; int /*<<< orphan*/  mediasize; } ;
struct g_journal_softc {int sc_flags; scalar_t__ sc_current_count; scalar_t__ sc_flush_in_progress; scalar_t__ sc_copy_in_progress; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_back_queue; int /*<<< orphan*/  sc_regular_queue; int /*<<< orphan*/ * sc_worker; int /*<<< orphan*/ * sc_journal_copying; int /*<<< orphan*/ * sc_rootmount; int /*<<< orphan*/  sc_sectorsize; int /*<<< orphan*/  sc_mediasize; int /*<<< orphan*/ * sc_name; struct g_geom* sc_geom; TYPE_2__* sc_dconsumer; int /*<<< orphan*/  sc_bio_flush; TYPE_2__* sc_jconsumer; } ;
struct g_geom {int /*<<< orphan*/ * name; } ;
struct bio {int bio_cflags; scalar_t__ bio_cmd; scalar_t__ bio_length; scalar_t__ bio_offset; } ;
struct TYPE_4__ {TYPE_1__* provider; } ;
struct TYPE_3__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
#define  BIO_READ 133 
#define  BIO_WRITE 132 
 int GJF_DEVICE_CLEAN ; 
 int GJF_DEVICE_DESTROY ; 
 int GJF_DEVICE_SWITCH ; 
#define  GJ_BIO_COPY 131 
#define  GJ_BIO_JOURNAL 130 
 int GJ_BIO_MASK ; 
#define  GJ_BIO_READ 129 
#define  GJ_BIO_REGULAR 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GJ_FLUSH_DATA ; 
 int /*<<< orphan*/  GJ_FLUSH_JOURNAL ; 
 int /*<<< orphan*/  FUNC1 (int,struct bio*,char*) ; 
 int /*<<< orphan*/  PRIBIO ; 
 struct bio* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC4 (struct g_provider*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct g_journal_softc*,struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (struct g_journal_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (struct g_journal_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct bio*) ; 
 int /*<<< orphan*/  FUNC12 (struct g_journal_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct g_journal_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct g_journal_softc*,struct bio*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct g_journal_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct g_journal_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct g_journal_softc*,int /*<<< orphan*/ ) ; 
 struct g_provider* FUNC18 (struct g_geom*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char*,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  time_second ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void
FUNC30(void *arg)
{
	struct g_journal_softc *sc;
	struct g_geom *gp;
	struct g_provider *pp;
	struct bio *bp;
	time_t last_write;
	int type;

	FUNC27(curthread);
	FUNC26(curthread, PRIBIO);
	FUNC28(curthread);

	sc = arg;
	type = 0;	/* gcc */

	if (sc->sc_flags & GJF_DEVICE_CLEAN) {
		FUNC0(0, "Journal %s clean.", sc->sc_name);
		FUNC13(sc);
	} else {
		FUNC16(sc);
	}
	/*
	 * Check if we can use BIO_FLUSH.
	 */
	sc->sc_bio_flush = 0;
	if (FUNC5(sc->sc_jconsumer) == 0) {
		sc->sc_bio_flush |= GJ_FLUSH_JOURNAL;
		FUNC0(1, "BIO_FLUSH supported by %s.",
		    sc->sc_jconsumer->provider->name);
	} else {
		FUNC0(0, "BIO_FLUSH not supported by %s.",
		    sc->sc_jconsumer->provider->name);
	}
	if (sc->sc_jconsumer != sc->sc_dconsumer) {
		if (FUNC5(sc->sc_dconsumer) == 0) {
			sc->sc_bio_flush |= GJ_FLUSH_DATA;
			FUNC0(1, "BIO_FLUSH supported by %s.",
			    sc->sc_dconsumer->provider->name);
		} else {
			FUNC0(0, "BIO_FLUSH not supported by %s.",
			    sc->sc_dconsumer->provider->name);
		}
	}

	gp = sc->sc_geom;
	FUNC19();
	pp = FUNC18(gp, "%s.journal", sc->sc_name);
	pp->mediasize = sc->sc_mediasize;
	/*
	 * There could be a problem when data provider and journal providers
	 * have different sectorsize, but such scenario is prevented on journal
	 * creation.
	 */
	pp->sectorsize = sc->sc_sectorsize;
	FUNC4(pp, 0);
	FUNC20();
	last_write = time_second;

	if (sc->sc_rootmount != NULL) {
		FUNC0(1, "root_mount_rel %p", sc->sc_rootmount);
		FUNC25(sc->sc_rootmount);
		sc->sc_rootmount = NULL;
	}

	for (;;) {
		/* Get first request from the queue. */
		FUNC22(&sc->sc_mtx);
		bp = FUNC2(&sc->sc_back_queue);
		if (bp != NULL)
			type = (bp->bio_cflags & GJ_BIO_MASK);
		if (bp == NULL) {
			bp = FUNC2(&sc->sc_regular_queue);
			if (bp != NULL)
				type = GJ_BIO_REGULAR;
		}
		if (bp == NULL) {
try_switch:
			if ((sc->sc_flags & GJF_DEVICE_SWITCH) ||
			    (sc->sc_flags & GJF_DEVICE_DESTROY)) {
				if (sc->sc_current_count > 0) {
					FUNC23(&sc->sc_mtx);
					FUNC10(sc);
					FUNC12(sc);
					continue;
				}
				if (sc->sc_flush_in_progress > 0)
					goto sleep;
				if (sc->sc_copy_in_progress > 0)
					goto sleep;
			}
			if (sc->sc_flags & GJF_DEVICE_SWITCH) {
				FUNC23(&sc->sc_mtx);
				FUNC15(sc);
				FUNC29(&sc->sc_journal_copying);
				continue;
			}
			if (sc->sc_flags & GJF_DEVICE_DESTROY) {
				FUNC0(1, "Shutting down worker "
				    "thread for %s.", gp->name);
				sc->sc_worker = NULL;
				FUNC29(&sc->sc_worker);
				FUNC23(&sc->sc_mtx);
				FUNC21(0);
			}
sleep:
			FUNC17(sc, last_write);
			continue;
		}
		/*
		 * If we're in switch process, we need to delay all new
		 * write requests until its done.
		 */
		if ((sc->sc_flags & GJF_DEVICE_SWITCH) &&
		    type == GJ_BIO_REGULAR && bp->bio_cmd == BIO_WRITE) {
			FUNC1(2, bp, "WRITE on SWITCH");
			goto try_switch;
		}
		if (type == GJ_BIO_REGULAR)
			FUNC3(&sc->sc_regular_queue, bp);
		else
			FUNC3(&sc->sc_back_queue, bp);
		FUNC23(&sc->sc_mtx);
		switch (type) {
		case GJ_BIO_REGULAR:
			/* Regular request. */
			switch (bp->bio_cmd) {
			case BIO_READ:
				FUNC14(sc, bp, bp->bio_offset,
				    bp->bio_offset + bp->bio_length);
				break;
			case BIO_WRITE:
				last_write = time_second;
				FUNC6(sc, bp);
				FUNC12(sc);
				break;
			default:
				FUNC24("Invalid bio_cmd (%d).", bp->bio_cmd);
			}
			break;
		case GJ_BIO_COPY:
			switch (bp->bio_cmd) {
			case BIO_READ:
				if (FUNC7(bp))
					FUNC8(sc);
				break;
			case BIO_WRITE:
				FUNC9(bp);
				FUNC8(sc);
				break;
			default:
				FUNC24("Invalid bio_cmd (%d).", bp->bio_cmd);
			}
			break;
		case GJ_BIO_JOURNAL:
			FUNC11(bp);
			FUNC12(sc);
			break;
		case GJ_BIO_READ:
		default:
			FUNC24("Invalid bio (%d).", type);
		}
	}
}