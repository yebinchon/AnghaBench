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
typedef  int /*<<< orphan*/  uint32_t ;
struct vnode {struct namecache* v_cache_dd; } ;
struct rwlock {int dummy; } ;
struct namecache {int nc_flag; int /*<<< orphan*/  nc_vp; struct vnode* nc_dvp; } ;
struct celockstate {int /*<<< orphan*/ ** vlp; } ;

/* Variables and functions */
 struct rwlock* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int NCF_ISDOTDOT ; 
 int NCF_NEGATIVE ; 
 struct rwlock* FUNC2 (struct namecache*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct celockstate*,struct rwlock*,struct rwlock*) ; 
 int /*<<< orphan*/  FUNC5 (struct celockstate*,struct vnode*,struct vnode*) ; 
 scalar_t__ FUNC6 (struct celockstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct celockstate*) ; 

__attribute__((used)) static void
FUNC8(struct celockstate *cel, struct vnode *dvp, struct vnode *vp,
    uint32_t hash)
{
	struct namecache *ncp;
	struct rwlock *blps[2];

	blps[0] = FUNC0(hash);
	for (;;) {
		blps[1] = NULL;
		FUNC5(cel, dvp, vp);
		ncp = dvp->v_cache_dd;
		if (ncp == NULL)
			break;
		if ((ncp->nc_flag & NCF_ISDOTDOT) == 0)
			break;
		FUNC1(ncp->nc_dvp == dvp);
		blps[1] = FUNC2(ncp);
		if (ncp->nc_flag & NCF_NEGATIVE)
			break;
		if (FUNC6(cel, ncp->nc_vp))
			break;
		if (ncp == dvp->v_cache_dd &&
		    (ncp->nc_flag & NCF_ISDOTDOT) != 0 &&
		    blps[1] == FUNC2(ncp) &&
		    FUNC3(ncp->nc_vp) == cel->vlp[2])
			break;
		FUNC7(cel);
		cel->vlp[0] = NULL;
		cel->vlp[1] = NULL;
		cel->vlp[2] = NULL;
	}
	FUNC4(cel, blps[0], blps[1]);
}