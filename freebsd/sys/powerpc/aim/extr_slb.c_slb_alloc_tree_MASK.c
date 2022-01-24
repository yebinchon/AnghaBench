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
struct slbtnode {int /*<<< orphan*/  ua_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  UAD_ROOT_LEVEL ; 
 int /*<<< orphan*/  slbt_zone ; 
 struct slbtnode* FUNC1 (int /*<<< orphan*/ ,int) ; 

struct slbtnode *
FUNC2(void)
{
	struct slbtnode *root;

	root = FUNC1(slbt_zone, M_NOWAIT | M_ZERO);
	FUNC0(root != NULL, ("unhandled NULL case"));
	root->ua_level = UAD_ROOT_LEVEL;

	return (root);
}