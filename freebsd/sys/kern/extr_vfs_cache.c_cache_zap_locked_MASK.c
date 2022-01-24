#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct namecache {int nc_flag; TYPE_1__* nc_dvp; int /*<<< orphan*/  nc_name; TYPE_1__* nc_vp; } ;
struct TYPE_6__ {int /*<<< orphan*/  v_cache_src; struct namecache* v_cache_dd; int /*<<< orphan*/  v_cache_dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct namecache*,TYPE_1__*) ; 
 int /*<<< orphan*/  KTR_VFS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct namecache*,int /*<<< orphan*/ ) ; 
 int NCF_DVDROP ; 
 int NCF_ISDOTDOT ; 
 int NCF_NEGATIVE ; 
 int /*<<< orphan*/  RA_WLOCKED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct namecache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct namecache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct namecache*,int) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  namecache ; 
 int /*<<< orphan*/  nc_dst ; 
 int /*<<< orphan*/  nc_hash ; 
 int /*<<< orphan*/  nc_src ; 
 int /*<<< orphan*/  numcache ; 
 int /*<<< orphan*/  numcachehv ; 
 int /*<<< orphan*/  vfs ; 
 int /*<<< orphan*/  zap ; 
 int /*<<< orphan*/  zap_negative ; 

__attribute__((used)) static void
FUNC10(struct namecache *ncp, bool neg_locked)
{

	if (!(ncp->nc_flag & NCF_NEGATIVE))
		FUNC8(ncp->nc_vp);
	FUNC8(ncp->nc_dvp);
	FUNC7(ncp, RA_WLOCKED);

	FUNC0(KTR_VFS, "cache_zap(%p) vp %p", ncp,
	    (ncp->nc_flag & NCF_NEGATIVE) ? NULL : ncp->nc_vp);
	FUNC2(ncp, nc_hash);
	if (!(ncp->nc_flag & NCF_NEGATIVE)) {
		FUNC4(vfs, namecache, zap, done, ncp->nc_dvp,
		    ncp->nc_name, ncp->nc_vp);
		FUNC5(&ncp->nc_vp->v_cache_dst, ncp, nc_dst);
		if (ncp == ncp->nc_vp->v_cache_dd)
			ncp->nc_vp->v_cache_dd = NULL;
	} else {
		FUNC3(vfs, namecache, zap_negative, done, ncp->nc_dvp,
		    ncp->nc_name);
		FUNC9(ncp, neg_locked);
	}
	if (ncp->nc_flag & NCF_ISDOTDOT) {
		if (ncp == ncp->nc_dvp->v_cache_dd)
			ncp->nc_dvp->v_cache_dd = NULL;
	} else {
		FUNC2(ncp, nc_src);
		if (FUNC1(&ncp->nc_dvp->v_cache_src)) {
			ncp->nc_flag |= NCF_DVDROP;
			FUNC6(&numcachehv, 1);
		}
	}
	FUNC6(&numcache, 1);
}