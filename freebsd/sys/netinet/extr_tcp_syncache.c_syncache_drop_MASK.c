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
struct toedev {int /*<<< orphan*/  (* tod_syncache_removed ) (struct toedev*,int /*<<< orphan*/ ) ;} ;
struct syncache_head {int /*<<< orphan*/  sch_length; int /*<<< orphan*/  sch_bucket; } ;
struct syncache {int /*<<< orphan*/  sc_todctx; struct toedev* sc_tod; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct syncache*) ; 
 int /*<<< orphan*/  FUNC1 (struct syncache_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct syncache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCPS_SYN_RECEIVED ; 
 int /*<<< orphan*/  sc_hash ; 
 int /*<<< orphan*/  FUNC4 (struct toedev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct syncache*) ; 

__attribute__((used)) static void
FUNC6(struct syncache *sc, struct syncache_head *sch)
{

	FUNC1(sch);

	FUNC3(TCPS_SYN_RECEIVED);
	FUNC2(&sch->sch_bucket, sc, sc_hash);
	sch->sch_length--;

#ifdef TCP_OFFLOAD
	if (ADDED_BY_TOE(sc)) {
		struct toedev *tod = sc->sc_tod;

		tod->tod_syncache_removed(tod, sc->sc_todctx);
	}
#endif

	FUNC5(sc);
}