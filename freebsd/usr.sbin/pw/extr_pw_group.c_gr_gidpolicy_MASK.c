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
typedef  int /*<<< orphan*/  uintmax_t ;
struct userconf {int min_gid; int max_gid; scalar_t__ reuse_gids; } ;
struct group {int gr_gid; } ;
struct bitmap {int dummy; } ;
typedef  scalar_t__ intmax_t ;
typedef  scalar_t__ gid_t ;
struct TYPE_2__ {scalar_t__ checkduplicate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_SOFTWARE ; 
 struct group* FUNC1 () ; 
 struct group* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct bitmap FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct bitmap*) ; 
 int FUNC6 (struct bitmap*) ; 
 int /*<<< orphan*/  FUNC7 (struct bitmap*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct bitmap*) ; 
 int /*<<< orphan*/  FUNC9 (struct bitmap*,int) ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static gid_t
FUNC11(struct userconf * cnf, intmax_t id)
{
	struct group   *grp;
	struct bitmap   bm;
	gid_t           gid = (gid_t) - 1;

	/*
	 * Check the given gid, if any
	 */
	if (id > 0) {
		gid = (gid_t) id;

		if ((grp = FUNC2(gid)) != NULL && conf.checkduplicate)
			FUNC10(EX_DATAERR, "gid `%ju' has already been allocated",
			    (uintmax_t)grp->gr_gid);
		return (gid);
	}

	/*
	 * We need to allocate the next available gid under one of
	 * two policies a) Grab the first unused gid b) Grab the
	 * highest possible unused gid
	 */
	if (cnf->min_gid >= cnf->max_gid) {	/* Sanity claus^H^H^H^Hheck */
		cnf->min_gid = 1000;
		cnf->max_gid = 32000;
	}
	bm = FUNC4(cnf->max_gid - cnf->min_gid + 1);

	/*
	 * Now, let's fill the bitmap from the password file
	 */
	FUNC3();
	while ((grp = FUNC1()) != NULL)
		if ((gid_t)grp->gr_gid >= (gid_t)cnf->min_gid &&
		    (gid_t)grp->gr_gid <= (gid_t)cnf->max_gid)
			FUNC9(&bm, grp->gr_gid - cnf->min_gid);
	FUNC0();

	/*
	 * Then apply the policy, with fallback to reuse if necessary
	 */
	if (cnf->reuse_gids)
		gid = (gid_t) (FUNC6(&bm) + cnf->min_gid);
	else {
		gid = (gid_t) (FUNC8(&bm) + 1);
		if (!FUNC7(&bm, gid))
			gid += cnf->min_gid;
		else
			gid = (gid_t) (FUNC6(&bm) + cnf->min_gid);
	}

	/*
	 * Another sanity check
	 */
	if (gid < cnf->min_gid || gid > cnf->max_gid)
		FUNC10(EX_SOFTWARE, "unable to allocate a new gid - range fully "
		    "used");
	FUNC5(&bm);
	return (gid);
}