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
struct toedev {int /*<<< orphan*/  (* tod_syncache_added ) (struct toedev*,int /*<<< orphan*/ ) ;} ;
struct syncache_head {int sch_length; scalar_t__ sch_nextc; int /*<<< orphan*/  sch_bucket; int /*<<< orphan*/  sch_last_overflow; } ;
struct syncache {int /*<<< orphan*/  sc_todctx; struct toedev* sc_tod; int /*<<< orphan*/  sc_inc; } ;
struct TYPE_2__ {int bucket_limit; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct syncache*) ; 
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct syncache_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct syncache_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct syncache*,int /*<<< orphan*/ ) ; 
 struct syncache* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCPS_SYN_RECEIVED ; 
 TYPE_1__ V_tcp_syncache ; 
 int /*<<< orphan*/  sc_hash ; 
 int /*<<< orphan*/  sch_head ; 
 int /*<<< orphan*/  FUNC9 (struct toedev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct syncache*,struct syncache_head*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct syncache*,struct syncache_head*,int) ; 
 int /*<<< orphan*/  tcps_sc_added ; 
 scalar_t__ ticks ; 
 int /*<<< orphan*/  time_uptime ; 

__attribute__((used)) static void
FUNC13(struct syncache *sc, struct syncache_head *sch)
{
	struct syncache *sc2;

	FUNC2(sch);

	/*
	 * Make sure that we don't overflow the per-bucket limit.
	 * If the bucket is full, toss the oldest element.
	 */
	if (sch->sch_length >= V_tcp_syncache.bucket_limit) {
		FUNC1(!FUNC4(&sch->sch_bucket),
			("sch->sch_length incorrect"));
		FUNC11(&sc->sc_inc);
		sc2 = FUNC6(&sch->sch_bucket, sch_head);
		sch->sch_last_overflow = time_uptime;
		FUNC10(sc2, sch);
	}

	/* Put it into the bucket. */
	FUNC5(&sch->sch_bucket, sc, sc_hash);
	sch->sch_length++;

#ifdef TCP_OFFLOAD
	if (ADDED_BY_TOE(sc)) {
		struct toedev *tod = sc->sc_tod;

		tod->tod_syncache_added(tod, sc->sc_todctx);
	}
#endif

	/* Reinitialize the bucket row's timer. */
	if (sch->sch_length == 1)
		sch->sch_nextc = ticks + INT_MAX;
	FUNC12(sc, sch, 1);

	FUNC3(sch);

	FUNC7(TCPS_SYN_RECEIVED);
	FUNC8(tcps_sc_added);
}