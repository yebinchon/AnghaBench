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
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mtx* FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx**,struct mtx**) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 

__attribute__((used)) static void
FUNC4(struct celockstate *cel, struct vnode *vp,
    struct vnode *dvp)
{
	struct mtx *vlp1, *vlp2;

	FUNC0(cel->vlp[0] == NULL);
	FUNC0(cel->vlp[1] == NULL);
	FUNC0(cel->vlp[2] == NULL);

	FUNC0(vp != NULL || dvp != NULL);

	vlp1 = FUNC1(vp);
	vlp2 = FUNC1(dvp);
	FUNC2(&vlp1, &vlp2);

	if (vlp1 != NULL) {
		FUNC3(vlp1);
		cel->vlp[0] = vlp1;
	}
	FUNC3(vlp2);
	cel->vlp[1] = vlp2;
}