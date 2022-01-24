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
struct regnode {scalar_t__ ref_cnt; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__* regulator_t ;
struct TYPE_3__ {int /*<<< orphan*/  enable_cnt; struct regnode* regnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct regnode*) ; 

int
FUNC4(regulator_t reg)
{
	int rv;
	struct regnode *regnode;

	regnode = reg->regnode;
	FUNC0(regnode->ref_cnt > 0,
	   ("Attempt to access unreferenced regulator: %s\n", regnode->name));
	FUNC1();
	rv = FUNC3(regnode);
	if (rv == 0)
		reg->enable_cnt++;
	FUNC2();
	return (rv);
}