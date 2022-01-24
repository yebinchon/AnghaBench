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
struct ucred {int dummy; } ;
struct mqfs_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mqfs_node*,struct mqfs_node*) ; 
 struct mqfs_node* FUNC1 (char const*,int,struct ucred*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mqfstype_file ; 
 int /*<<< orphan*/  FUNC2 (struct mqfs_node*) ; 

__attribute__((used)) static struct mqfs_node *
FUNC3(struct mqfs_node *parent, const char *name, int namelen,
	struct ucred *cred, int mode)
{
	struct mqfs_node *node;

	node = FUNC1(name, namelen, cred, mode, mqfstype_file);
	if (FUNC0(parent, node) != 0) {
		FUNC2(node);
		return (NULL);
	}
	return (node);
}