#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* entry; char* file; int lno; char* pat; struct TYPE_3__* right; struct TYPE_3__* left; } ;
typedef  TYPE_1__ NODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*,int,char*,int) ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int searchar ; 
 scalar_t__ vflag ; 
 scalar_t__ xflag ; 

void
FUNC2(NODE *node)
{

	if (node->left)
		FUNC2(node->left);
	if (vflag)
		FUNC1("%s %s %d\n",
		    node->entry, node->file, (node->lno + 63) / 64);
	else if (xflag)
		FUNC1("%-16s %4d %-16s %s\n",
		    node->entry, node->lno, node->file, node->pat);
	else
		FUNC0(outf, "%s\t%s\t%c^%s%c\n",
		    node->entry, node->file, searchar, node->pat, searchar);
	if (node->right)
		FUNC2(node->right);
}