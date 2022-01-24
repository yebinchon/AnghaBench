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
struct pfs_node {int pn_flags; int /*<<< orphan*/  pn_destroy; int /*<<< orphan*/  pn_vis; int /*<<< orphan*/  pn_attr; int /*<<< orphan*/  pn_info; } ;
typedef  int /*<<< orphan*/  pfs_vis_t ;
typedef  int /*<<< orphan*/  pfs_destroy_t ;
typedef  int /*<<< orphan*/  pfs_attr_t ;

/* Variables and functions */
 int PFS_PROCDEP ; 
 int /*<<< orphan*/  FUNC0 (struct pfs_node*,struct pfs_node*) ; 
 struct pfs_node* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pfs_node*) ; 
 int FUNC3 (struct pfs_node*,int) ; 
 int /*<<< orphan*/  pfstype_dir ; 
 int /*<<< orphan*/  pfstype_procdir ; 

struct pfs_node	*
FUNC4(struct pfs_node *parent, const char *name,
	       pfs_attr_t attr, pfs_vis_t vis, pfs_destroy_t destroy,
	       int flags)
{
	struct pfs_node *pn;
	int rc;

	pn = FUNC1(parent->pn_info, name,
			 (flags & PFS_PROCDEP) ? pfstype_procdir : pfstype_dir, flags);
	if (pn == NULL)
		return (NULL);
	pn->pn_attr = attr;
	pn->pn_vis = vis;
	pn->pn_destroy = destroy;
	pn->pn_flags = flags;
	FUNC0(parent, pn);
	rc = FUNC3(pn, flags);
	if (rc) {
		FUNC2(pn);
		return (NULL);
	}
	return (pn);
}