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
struct smb_connobj {struct smb_connobj* co_parent; int /*<<< orphan*/  co_children; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct smb_connobj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  co_next ; 
 int /*<<< orphan*/  FUNC1 (struct smb_connobj*) ; 

__attribute__((used)) static void
FUNC2(struct smb_connobj *parent, struct smb_connobj *child)
{

	FUNC1(parent);
	FUNC0(&parent->co_children, child, co_next);
	child->co_parent = parent;
}