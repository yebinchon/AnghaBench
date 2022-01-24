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
struct vnode {int dummy; } ;
struct nfsnode {TYPE_1__* n_fhp; } ;
struct nfsfh {scalar_t__ nfh_len; int /*<<< orphan*/  nfh_fh; } ;
struct TYPE_2__ {scalar_t__ nfh_len; int /*<<< orphan*/  nfh_fh; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct nfsnode* FUNC1 (struct vnode*) ; 

int
FUNC2(struct vnode *vp, void *arg)
{
	struct nfsfh *nfhp = (struct nfsfh *)arg;
	struct nfsnode *np = FUNC1(vp);

	if (np->n_fhp->nfh_len != nfhp->nfh_len ||
	    FUNC0(np->n_fhp->nfh_fh, nfhp->nfh_fh, nfhp->nfh_len))
		return (1);
	return (0);
}