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
struct xenbus_device_id {int dummy; } ;
struct xenbus_device {int dummy; } ;
struct pcifront_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct pcifront_device* FUNC1 (struct xenbus_device*) ; 
 int FUNC2 (struct pcifront_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcifront_device*) ; 

__attribute__((used)) static int
FUNC4(struct xenbus_device *xdev,
			   const struct xenbus_device_id *id)
{
	int err = 0;
	struct pcifront_device *pdev;

	FUNC0("xenbus probing\n");

	if ((pdev = FUNC1(xdev)) == NULL)
		goto out;

	err = FUNC2(pdev);

 out:
	if (err)
		FUNC3(pdev);
	return err;
}