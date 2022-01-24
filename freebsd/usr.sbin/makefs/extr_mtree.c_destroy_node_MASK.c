#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* name; struct TYPE_4__* inode; } ;
typedef  TYPE_1__ fsnode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(fsnode *n)
{

	FUNC0(n != NULL);
	FUNC0(n->name != NULL);
	FUNC0(n->inode != NULL);

	FUNC1(n->inode);
	FUNC1(n->name);
	FUNC1(n);
}