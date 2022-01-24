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
struct vnode {scalar_t__ v_type; } ;
struct TYPE_3__ {scalar_t__* nfsuquad; } ;
struct nfsnode {int /*<<< orphan*/  n_cookies; TYPE_1__ n_cookieverf; scalar_t__ n_direofoffset; } ;
struct TYPE_4__ {scalar_t__ ndm_eocookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ VDIR ; 
 struct nfsnode* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsnode*) ; 

void
FUNC5(struct vnode *vp)
{
	struct nfsnode *np = FUNC2(vp);

	FUNC0(vp->v_type == VDIR, ("nfs: invaldir not dir"));
	FUNC3(np);
	np->n_direofoffset = 0;
	np->n_cookieverf.nfsuquad[0] = 0;
	np->n_cookieverf.nfsuquad[1] = 0;
	if (FUNC1(&np->n_cookies))
		FUNC1(&np->n_cookies)->ndm_eocookie = 0;
	FUNC4(np);
}