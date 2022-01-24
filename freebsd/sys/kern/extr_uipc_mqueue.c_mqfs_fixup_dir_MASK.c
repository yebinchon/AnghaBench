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
struct mqfs_node {char* mn_name; int mn_refcount; int /*<<< orphan*/  mn_type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mqfs_node*,struct mqfs_node*) ; 
 int /*<<< orphan*/  mqfstype_parent ; 
 int /*<<< orphan*/  mqfstype_this ; 
 struct mqfs_node* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mqfs_node*) ; 

__attribute__((used)) static int
FUNC3(struct mqfs_node *parent)
{
	struct mqfs_node *dir;

	dir = FUNC1();
	dir->mn_name[0] = '.';
	dir->mn_type = mqfstype_this;
	dir->mn_refcount = 1;
	if (FUNC0(parent, dir) != 0) {
		FUNC2(dir);
		return (-1);
	}

	dir = FUNC1();
	dir->mn_name[0] = dir->mn_name[1] = '.';
	dir->mn_type = mqfstype_parent;
	dir->mn_refcount = 1;

	if (FUNC0(parent, dir) != 0) {
		FUNC2(dir);
		return (-1);
	}

	return (0);
}