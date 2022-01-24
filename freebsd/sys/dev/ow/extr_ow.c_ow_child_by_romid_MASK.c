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
struct ow_devinfo {scalar_t__ romid; } ;
typedef  scalar_t__ romid_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ***,int*) ; 
 struct ow_devinfo* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static device_t
FUNC3(device_t dev, romid_t romid)
{
	device_t *children, retval, child;
	int nkid, i;
	struct ow_devinfo *di;

	if (FUNC0(dev, &children, &nkid) != 0)
		return (NULL);
	retval = NULL;
	for (i = 0; i < nkid; i++) {
		child = children[i];
		di = FUNC1(child);
		if (di->romid == romid) {
			retval = child;
			break;
		}
	}
	FUNC2(children, M_TEMP);

	return (retval);
}