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
struct vfsconf {int dummy; } ;
struct pfs_node {int dummy; } ;
struct pfs_info {int (* pi_init ) (struct pfs_info*,struct vfsconf*) ;char* pi_name; struct pfs_node* pi_root; } ;

/* Variables and functions */
 scalar_t__ bootverbose ; 
 struct pfs_node* FUNC0 (struct pfs_info*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct pfs_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct pfs_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct pfs_node*) ; 
 int /*<<< orphan*/  pfstype_root ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (struct pfs_info*,struct vfsconf*) ; 

int
FUNC7(struct pfs_info *pi, struct vfsconf *vfc)
{
	struct pfs_node *root;
	int error;

	FUNC3(pi);

	/* set up the root directory */
	root = FUNC0(pi, "/", pfstype_root);
	pi->pi_root = root;
	FUNC2(root);
	FUNC4(root);

	/* construct file hierarchy */
	error = (pi->pi_init)(pi, vfc);
	if (error) {
		FUNC1(root);
		pi->pi_root = NULL;
		return (error);
	}

	if (bootverbose)
		FUNC5("%s registered\n", pi->pi_name);
	return (0);
}