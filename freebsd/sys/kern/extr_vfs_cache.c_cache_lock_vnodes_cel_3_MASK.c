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
struct mtx {int dummy; } ;
struct celockstate {struct mtx** vlp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtx* FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 
 int /*<<< orphan*/  cache_lock_vnodes_cel_3_failures ; 
 int /*<<< orphan*/  FUNC3 (struct celockstate*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtx*) ; 
 scalar_t__ FUNC5 (struct mtx*) ; 

__attribute__((used)) static bool
FUNC6(struct celockstate *cel, struct vnode *vp)
{
	struct mtx *vlp;
	bool ret;

	FUNC2(cel->vlp[0]);
	FUNC2(cel->vlp[1]);
	FUNC0(cel->vlp[2] == NULL);

	FUNC0(vp != NULL);
	vlp = FUNC1(vp);

	ret = true;
	if (vlp >= cel->vlp[1]) {
		FUNC4(vlp);
	} else {
		if (FUNC5(vlp))
			goto out;
		cache_lock_vnodes_cel_3_failures++;
		FUNC3(cel);
		if (vlp < cel->vlp[0]) {
			FUNC4(vlp);
			FUNC4(cel->vlp[0]);
			FUNC4(cel->vlp[1]);
		} else {
			if (cel->vlp[0] != NULL)
				FUNC4(cel->vlp[0]);
			FUNC4(vlp);
			FUNC4(cel->vlp[1]);
		}
		ret = false;
	}
out:
	cel->vlp[2] = vlp;
	return (ret);
}