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
struct pfs_node {int /*<<< orphan*/  pn_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct pfs_node*,struct pfs_node*) ; 
 struct pfs_node* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pfs_node*) ; 
 int /*<<< orphan*/  pfstype_parent ; 
 int /*<<< orphan*/  pfstype_this ; 

__attribute__((used)) static int
FUNC3(struct pfs_node *parent, int flags)
{
	struct pfs_node *dot, *dotdot;

	dot = FUNC1(parent->pn_info, ".", pfstype_this, flags);
	if (dot == NULL)
		return (ENOMEM);
	dotdot = FUNC1(parent->pn_info, "..", pfstype_parent, flags);
	if (dotdot == NULL) {
		FUNC2(dot);
		return (ENOMEM);
	}
	FUNC0(parent, dot);
	FUNC0(parent, dotdot);
	return (0);
}