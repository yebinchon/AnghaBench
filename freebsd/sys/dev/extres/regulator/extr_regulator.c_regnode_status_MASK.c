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
struct regnode {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct regnode*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct regnode*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int
FUNC4(struct regnode *regnode, int *status)
{
	int rv;

	FUNC3();

	FUNC2(regnode);
	rv = FUNC0(regnode, status);
	FUNC1(regnode);
	return (rv);
}