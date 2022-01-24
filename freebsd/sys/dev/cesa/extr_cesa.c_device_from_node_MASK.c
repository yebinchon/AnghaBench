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
typedef  int phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***,int*) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static device_t
FUNC4(device_t root, phandle_t node)
{
	device_t *children, retval;
	int nkid, i;

	/* Nothing matches no node */
	if (node == -1)
		return (NULL);

	if (root == NULL)
		/* Get root of device tree */
		if ((root = FUNC2("root0")) == NULL)
			return (NULL);

	if (FUNC1(root, &children, &nkid) != 0)
		return (NULL);

	retval = NULL;
	for (i = 0; i < nkid; i++) {
		/* Check if device and node matches */
		if (FUNC0(root, children[i]) == node) {
			retval = children[i];
			break;
		}
		/* or go deeper */
		if ((retval = FUNC4(children[i], node)) != NULL)
			break;
	}
	FUNC3(children, M_TEMP);

	return (retval);
}