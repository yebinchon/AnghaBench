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
struct regnode {int /*<<< orphan*/ * parent; int /*<<< orphan*/ * parent_name; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(struct regnode *regnode)
{

	/* All ready resolved or no parent? */
	if ((regnode->parent != NULL) ||
	    (regnode->parent_name == NULL))
		return (0);

	regnode->parent = FUNC0(regnode->parent_name);
	if (regnode->parent == NULL)
		return (ENODEV);
	return (0);
}