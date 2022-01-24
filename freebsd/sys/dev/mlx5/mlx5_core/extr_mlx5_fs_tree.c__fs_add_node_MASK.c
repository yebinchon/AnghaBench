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
struct fs_base {struct fs_base* parent; int /*<<< orphan*/  name; int /*<<< orphan*/  users_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct fs_base *node,
			 const char *name,
			 struct fs_base *parent)
{
	if (parent)
		FUNC0(&parent->users_refcount);
	node->name = FUNC1(name, GFP_KERNEL);
	node->parent = parent;
}