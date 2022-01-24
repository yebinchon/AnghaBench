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
struct vnode {int dummy; } ;
struct rwlock {int dummy; } ;
struct namecache {int nc_flag; struct vnode* nc_vp; struct vnode* nc_dvp; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NCF_NEGATIVE ; 
 struct rwlock* FUNC1 (struct namecache*) ; 
 struct mtx* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtx**,struct mtx**) ; 
 int /*<<< orphan*/  FUNC5 (struct namecache*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct namecache*,struct vnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC8 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC9 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC10 (struct rwlock*) ; 
 int /*<<< orphan*/  FUNC11 (struct rwlock*) ; 

__attribute__((used)) static bool
FUNC12(struct namecache *ncp, struct vnode *vp,
    struct mtx **vlpp)
{
	struct mtx *pvlp, *vlp1, *vlp2, *to_unlock;
	struct rwlock *blp;

	FUNC0(vp == ncp->nc_dvp || vp == ncp->nc_vp);
	FUNC3(vp);

	if (ncp->nc_flag & NCF_NEGATIVE) {
		if (*vlpp != NULL) {
			FUNC9(*vlpp);
			*vlpp = NULL;
		}
		FUNC6(ncp, vp);
		return (true);
	}

	pvlp = FUNC2(vp);
	blp = FUNC1(ncp);
	vlp1 = FUNC2(ncp->nc_dvp);
	vlp2 = FUNC2(ncp->nc_vp);

	if (*vlpp == vlp1 || *vlpp == vlp2) {
		to_unlock = *vlpp;
		*vlpp = NULL;
	} else {
		if (*vlpp != NULL) {
			FUNC9(*vlpp);
			*vlpp = NULL;
		}
		FUNC4(&vlp1, &vlp2);
		if (vlp1 == pvlp) {
			FUNC7(vlp2);
			to_unlock = vlp2;
		} else {
			if (!FUNC8(vlp1))
				goto out_relock;
			to_unlock = vlp1;
		}
	}
	FUNC10(blp);
	FUNC5(ncp, false);
	FUNC11(blp);
	if (to_unlock != NULL)
		FUNC9(to_unlock);
	return (true);

out_relock:
	FUNC9(vlp2);
	FUNC7(vlp1);
	FUNC7(vlp2);
	FUNC0(*vlpp == NULL);
	*vlpp = vlp1;
	return (false);
}