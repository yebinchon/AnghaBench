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
typedef  int /*<<< orphan*/  regulator_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct regnode* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct regnode*,int /*<<< orphan*/ ) ; 

int
FUNC4(device_t cdev, const char *name, regulator_t *reg)
{
	struct regnode *regnode;

	FUNC0();
	regnode = FUNC2(name);
	if (regnode == NULL) {
		FUNC1();
		return (ENODEV);
	}
	*reg = FUNC3(regnode, cdev);
	FUNC1();
	return (0);
}